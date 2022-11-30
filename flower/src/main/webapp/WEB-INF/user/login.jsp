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
        margin-top: 5%;
        margin-left: 12%;
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
        left: 47%;
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
        <input class="input_box" type="username" placeholder="用户名" name="username" id="username">
        <input class="input_box" type="password" placeholder="密码" name="password" id="password">
        <br>
        <span id="msg" style="color: red;margin-left: 13%"></span>
        <br>
        <input class="button_box" type="button" value="登录" id="loginButton">
        <input class="button_box" type="button" value="注册" id="registerButton">
    </form>
</div>

</body>
</html>
<script type="text/javascript" src="../../jquery/jquery-1.11.1-min.js"></script>
<script type="text/javascript">
    $("#loginButton").click(
        function () {
            var username = $("#username").val();
            var password = $("#password").val();
            if (username === "" && password === ""){
                $("#msg").text("账号和密码不能为空");
                return;
            }
            $.ajax({
                url:'login.do',
                data:{
                    username:username,
                    password:password,
                },
                type:'POST',
                datatype:'json',
                success:function (ret) {
                    if ("1"===ret.code) {
                        window.location.href = "/flowers/userindex.do";
                    }else{
                        $("#msg").text(ret.massage);
                    }
                },
            })
        }
    );
    $("#registerButton").click(
        function () {
            window.location.href = "toRegister.do";
        }
    );
</script>