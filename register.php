<?php
//提交了
if(!empty($_POST['username'])){

    include_once './lib/fun.php';

    $username=mysql_real_escape_string($_POST['username']);
    $password=mysql_real_escape_string($_POST['password']);
    $repassword=mysql_real_escape_string($_POST['repassword']);

    if(!$username){
        msg(2,'用户名不能为空');
    }

    if(!$password){
         msg(2,'密码不能为空');
    }
    if(!$repassword){
         msg(2,'确认密码不能为空');
    }
    if($password!==$repassword){
         msg(2,'两次输入密码不一致！请重新输入');
    }

    //成功时，连接数据库

    $con=mysqlInit('localhost','root','','my_mall');

    if(!$con){
        msg(2,mysql_error());
    }

    
    //判断是不是在用户表里面存在了

    $sql="select count('id') as total from mall_user where username='{$username}'";

    $obj=mysqli_query($con,$sql);

    $result=mysqli_fetch_all($obj,MYSQLI_ASSOC);


    //用户已经在数据库中了

    if(isset($result[0]['total'])&&$result[0]['total']>0){
        msg(2,'用户名已存在，请重新输入');
    }

    //密码加密处理
    $password=createPassword($password);

    $sql="INSERT into mall_user (username,password,created_time) VALUES('{$username}','{$password}','{$_SERVER['REQUEST_TIME']}')";

    unset($obj,$result);

    $obj=mysqli_query($con,$sql);

    if($obj){
      
        
       msg(1,'恭喜注册成功','login.php');

    }else{
         msg(2,mysql_error());
     
    }

}

mysqli_close($con);
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>M-GALLARY|用户注册</title>
    <link type="text/css" rel="stylesheet" href="./static/css/common.css">
    <link type="text/css" rel="stylesheet" href="./static/css/add.css">
    <link rel="stylesheet" type="text/css" href="./static/css/login.css">
</head>
<body>
<div class="header">
    <div class="logo f1">
        <img src="./static/image/logo.png">
    </div>
    <div class="auth fr">
        <ul>
            <li><a href="login.php">登录</a></li>
            <li><a href="register.php">注册</a></li>
        </ul>
    </div>
</div>
<div class="content">
    <div class="center">
        <div class="center-login">
            <div class="login-banner">
                <a href="#"><img src="./static/image/login_banner.png" alt=""></a>
            </div>
            <div class="user-login">
                <div class="user-box">
                    <div class="user-title">
                        <p>用户注册</p>
                    </div>
                    <form class="login-table" name="register" id="register-form" action="register.php" method="post">
                        <div class="login-left">
                            <label class="username">用户名</label>
                            <input type="text" class="yhmiput" name="username" placeholder="Username" id="username">
                        </div>
                        <div class="login-right">
                            <label class="passwd">密码</label>
                            <input type="password" class="yhmiput" name="password" placeholder="Password" id="password">
                        </div>
                        <div class="login-right">
                            <label class="passwd">确认</label>
                            <input type="password" class="yhmiput" name="repassword" placeholder="Repassword"
                                   id="repassword">
                        </div>
                        <div class="login-btn">
                            <button type="submit">注册</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <p><span>M-GALLARY</span> ©2017 POWERED BY IMOOC.INC</p>
</div>

</body>
<script src="./static/js/jquery-1.10.2.min.js"></script>
<script src="./static/js/layer/layer.js"></script>
<script>
    $(function () {
        $('#register-form').submit(function () {
            var username = $('#username').val(),
                password = $('#password').val(),
                repassword = $('#repassword').val();
            if (username == '' || username.length <= 0) {
                layer.tips('用户名不能为空', '#username', {time: 2000, tips: 2});
                $('#username').focus();
                return false;
            }

            if (password == '' || password.length <= 0) {
                layer.tips('密码不能为空', '#password', {time: 2000, tips: 2});
                $('#password').focus();
                return false;
            }

            if (repassword == '' || repassword.length <= 0 || (password != repassword)) {
                layer.tips('两次密码输入不一致', '#repassword', {time: 2000, tips: 2});
                $('#repassword').focus();
                return false;
            }

            return true;
        })

    })
</script>
</html>


