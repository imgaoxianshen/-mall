<?php
include_once './lib/fun.php';
session_start();
unset($_SESSION['user']);
if(empty($_SESSION['user'])){
msg(1,'退出登录成功','index.php');
}else{
msg(2,'退出登录失败','admin_index.php');
}
?>