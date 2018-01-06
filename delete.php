<?php
include_once './lib/fun.php';

if(!checkLogin()){
    msg(2,'请登录','login.php');
}

$goodsId=isset($_GET['id'])&&is_numeric($_GET['id'])?intval($_GET['id']):'';

if(!$goodsId){
    msg(2,'参数非法','index.php');
}

//根据id查询商品信息
$con=mysqlInit('localhost','root','','my_mall');
$sql="SELECT id from mall_goods where id={$goodsId}";
$obj=mysqli_query($con,$sql);

if(!$goods=mysqli_fetch_assoc($obj)){
    msg(2,'该画品不存在','index.php');
}
//删除处理
$sql="DELETE FROM mall_goods WHERE id={$goodsId} LIMIT 1";
if($result=mysqli_query($con,$sql)){
    //mysqli_affected_rows()=1
    msg(1,'删除成功','index.php');
}else{
    msg(2,'删除失败','index.php');
}
?>