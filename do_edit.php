<?php
header("Content-type:text/html;charset=utf-8");
include_once './lib/fun.php';

if(!checkLogin()){
    msg(2,'请先登录！','login.php');
}


if(!empty($_POST['name'])){
 
    $con=mysqlInit('localhost','root','','my_mall');

    if(!$goodsId=intval($_POST['id'])){
        msg(2,'参数非法','index.php');
    }
    //根据id校验油画信息
    $sql="SELECT * FROM mall_goods WHERE id={$goodsId}";
    $obj=mysqli_query($con,$sql);

    if(!$goods=mysqli_fetch_assoc($obj)){
        msg(2,'油画不存在','index.php');
    }

    $name=mysql_real_escape_string(trim($_POST['name']));
    $price=intval($_POST['price']);
    $des=mysql_real_escape_string(trim($_POST['des']));
    $content=mysql_real_escape_string(trim($_POST['content']));
    //名称
    $nameLength=mb_strlen($name,'utf-8');
    if($nameLength<=0||$nameLength>30){
        msg(2,'油画名称应该在1-30字符之间');
    }
    //价格
    if($price<=0||$price>9999999999){
        msg(2,'油画价格应该在小于9999999999');
    }
    //详情
    if(empty($content)){
        msg(2,'油画详情不能为空！');
    }
    //简介
    $desLength=mb_strlen($des,'utf-8');

    if($desLength<=0||$desLength>100){
        msg(2,'油画简介应该在1-100字符之间');
    }

    //更新数组
    $update=array(
        'name'=>$name,
        'price'=>$price,
        'des'=>$des,
        'content'=>$content
    );


    //商品图片的校验
    if($_FILES['file']['size']>0){

        $pic=imgUpload($_FILES['file']);
        $update['pic']=$pic;
    }

    //只更新被更改的数据
    foreach($update as $k =>$v){
        if($goods[$k]==$v){
            unset($update[$k]);
        }
    }
    //无更新
    if(empty($update)){
        msg(1,'操作成功','edit.php?id='.$goodsId);
    }
        //更新sql处理
    $updateSql='';
    foreach($update as $k=>$v){
        $updateSql.="{$k}='{$v}' ,";
    }

    $updateSql=rtrim($updateSql,',');

    unset($sql,$obj,$result);

    $sql="UPDATE mall_goods SET {$updateSql}  WHERE id={$goodsId}";
    //更新成功
    if($result=mysqli_query($con,$sql)){
    
        //mysqli_affected_rows();//影响的行数
        msg(1,'操作成功','edit.php?id='.$goodsId);
    }else{
        msg(2,'更新失败','edit.php?id='.$goodsId);
        
    }




}else{
    msg(2,'非法访问','index.php');
}


?>