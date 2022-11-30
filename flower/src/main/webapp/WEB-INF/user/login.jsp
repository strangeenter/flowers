<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<style type="text/css">
    body {
        background-color: #8ea4f8;
        background-image: url(/photo/布拉格之恋.jpg);
        background-repeat: no-repeat;
        background-size: cover;
    }
    .login_box {
        width: 400px;
        height: 400px;
        background-color: #fff;
        margin: auto;
        margin-top: 150px;
        border-radius: 5px;
        overflow: hidden;
    }
    .title {
        text-align: center;
        font-size: 28px;
        color: #000;
        margin-top: 80px;
        margin-bottom: 10px;
        letter-spacing: 3px;
        font-family: sans-serif;
    }
    .input_box {
        width: 300px;
        height: 30px;
        width: 300px;
        height: 40px;
        padding-left: 10px;
        margin-top: 20px;
        margin-left: 50px;
    }
    .button_box {
        width: 300px;
        height: 35px;
        width: 300px;
        height: 40px;
        margin-top: 20px;
        margin-left: 58px;
        border-radius: 5px;
        background-color: #64a9d9;
        cursor: pointer;
        color: #fff;
    }
    .logo_box {
        position: absolute;
        background-color: #fff;
        width: 100px;
        height: 100px;
        border-radius: 100px;
        top: 100px;
        left: 46%;
        border: solid 5px #A68364;
        text-align: center;
    }
    .logo_img {
        margin-top: 20px;
    }
</style>
<head>
    <meta charset="UTF-8">
    <title>花点心意</title>
</head>

<body>
<div class="logo_box"><img class="logo_img" src=""></div>
<div class="login_box">
    <form action="/login.do" method="post">
        <h1 class="title">欢迎登录</h1>
        <input class="input_box" type="username" placeholder="用户名" name="username">
        <input class="input_box" type="password" placeholder="密码" name="password">
        <input class="button_box" type="submit" value="登录">
        <input class="button_box" type="button" value="注册">
    </form>
</div>

</body>
</html>