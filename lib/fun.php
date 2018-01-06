<?php

//数据库连接初始化

function mysqlInit($host,$username,$password,$dbName){
     $con=mysqli_connect($host,$username,$password,$dbName);
    if(!$con){
        return false;
    }
    mysqli_query($conn);//, "set names gbk");

    return $con;
}

//密码加密处理

function createPassword($password){
    if(!$password){
        return false;
    }

    return md5(md5($password).'mall');
}

//页面跳转到msg

function msg($type,$msg=null,$url=null){
    $toUrl="location:msg.php?type={$type}";
    $toUrl.=$msg?"&msg={$msg}":'';
     $toUrl.=$url?"&url={$url}":'';
    header($toUrl);
    exit;
}

//文件上传处理

function imgUpload($file){
if(!is_uploaded_file($file['tmp_name'])){

        msg(2,'请上传符合规范的图像');
    }

    $type=$file['type'];

    if(!in_array($type,array("image/png","image/jpeg","image/jpg","image/gif"))){
        msg(2,"请上传png.jpg,gif的图片");
    }

    //上传目录
    $uploadPath='./static/file/';
    $uploadUrl='/static/file/';
    //上传文件夹
    $fileDir=date('Y/md/',$_SERVER['REQUEST_TIME']);
    //检查上传目录是否存在
    if(!is_dir($uploadPath.$fileDir)){
        mkdir($uploadPath.$fileDir,0777,true);//递归创建目录
    }

    $ext=strtolower(pathinfo($file['name'],PATHINFO_EXTENSION));
    $img=uniqid().mt_rand(1000,999).'.'.$ext;

    $imgPath=$uploadPath.$fileDir.$img;
    $imgUrl='http://v7.yunruikj.com/test/mall'.$uploadUrl.$fileDir.$img;
//操作失败
    if(!move_uploaded_file($file['tmp_name'],$imgPath)){

        msg(2,'服务器繁忙，请稍后再试！');
    }

    return $imgUrl;
}

//检测是否登录
function checkLogin(){
    session_start();
    if(!isset($_SESSION['user'])||empty($_SESSION['user'])){
            return false;
    }
    return true;
}




//分页-----------$state如果为1则显示的是index的，如果为0则为admin_user_list.php的
function pages($total,$currentPage,$pageSize,$show=4,$state=1){
$pageStr='';
//总数大于每一页的条数才会分页
if($total>$pageSize){
    $totalPage=ceil($total/$pageSize);//向上取整

    $currentPage=$currentPage>$totalPage?$totalPage:$currentPage;//当前页大于总页数的处理
    //分页起始显示的界面
    $from=max(1,($currentPage-intval($show/2)));
    //分页结束页
    $to=$from+$show-1;

  
if($state){
    $pageStr.= '<div class="page-nav">'.'<ul>';

}
    //当前页码大于1，显示上一页和首页
    if($currentPage>1){
        $pageStr.="<li><a href='".pageUrl(1)."'>首页</a></li>";
        $pageStr.="<li><a href='".pageUrl($currentPage-1)."'>上一页</a></li>";

    }

      if($to>$totalPage){
        $to=$totalPage;
        $from=max(1,($to-$show+1));
    }

    if($from>1){
        $pageStr.='<li>...</li>';

    }

    for($i=$from;$i<=$to;$i++){
        if($i!=$currentPage){
            $pageStr.="<li><a href='".pageUrl($i)."'>{$i}</a></li>";
        }else{
            $pageStr.="<li><span class='curr-page'>{$i}</span></li>"; 
        }
    }


    if($to<$totalPage){
        $pageStr.='<li>...</li>';
    }

    if($currentPage<$totalPage){

        $pageStr.="<li><a href='".pageUrl($currentPage+1)."'>下一页</a></li>";
        $pageStr.="<li><a href='".pageUrl($totalPage)."'>尾页</a></li>";
        

    }
if($state){
    $pageStr.= '</ul>'.'</div>';
}
}



return $pageStr;
}

//获取Url
function getUrl(){
    $url='';
    $url.=$_SERVER['SERVER_PORT']==443?'https://':'http://';
    $url.=$_SERVER['HTTP_HOST'];
    $url.=$_SERVER['REQUEST_URI'];
    return $url;
}


//根据page生成url
function pageUrl($page,$url=''){
    $url=empty($url)?getUrl():$url;

    $pos=strpos($url,'?');

    if($pos===false){
        $url.="?page=".$page;
    }else{
        $queryStr=substr($url,$pos+1);
        parse_str($queryStr,$queryArr);//queryArr为queryStr变成的数组

        if(isset($queryArr['page'])){
            unset($queryArr['page']);
        }
        $queryArr['page']=$page;
        $str=http_build_query($queryArr);
        $url=substr($url,0,$pos).'?'.$str;
    }
    return $url;
}