<%--
  Created by IntelliJ IDEA.
  User: 14630
  Date: 2022/11/30
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<style>
    body {
        background-image: url(/photo/烟火向星辰.jpg);

    }

    /* 登录样式 */
    form {
        width: 500px;
        height: 640px;
        text-align: center;
        position: relative;
        margin: 0 auto;
        background-color: rgba(0, 0, 0, .5);
        margin-top: 1%;
        border-radius: 20px;
    }

    .register {
        width: 200px;
        height: 50px;
        margin: 0% auto;
        line-height: 50px;
        font-size: 25px;
        color: whitesmoke;
    }

    .yourPassWord,
    .yourUserName,
    .email,
    .button {
        width: 450px;
        margin: 0 auto;
        margin-top: 10px;
        box-sizing: border-box;
    }

    .yourPassWord,
    .yourUserName,
    .address,
    .email {
        color: whitesmoke;
        font-size: 15px;
        line-height: 10px;
    }

    #userName,
    #passWord,
    #address,
    #loginName,
    #email {
        height: 30px;
        width: 320px;
        font-size: 24px;
        outline: none;
        padding-left: 20px;
        background: none;
        border-radius: 15px;
        border: 2px solid gray;
    }

    #sex {
        height: 35px;
        width: 350px;
        font-size: 24px;
        outline: none;
        padding-left: 20px;
        background: none;
        border-radius: 15px;
        border: 2px solid gray;
    }

    button {
        width: 320px;
        height: 50px;
        background: none;
        outline: none;
        border: 2px solid gray;
        border-radius: 15px;
        font-size: 24px;
        transition: all 1s;
        color: whitesmoke;
    }

    button:hover {
        background: rgb(175, 170, 175);
        color: whitesmoke;
    }

    .register {
        width: 300px;
    }

    .register a {
        color: whitesmoke;
        font-size: 18px;
    }

    input {
        color: whitesmoke;
    }
</style>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册页面</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/common.css">
</head>
<body>
<form action="/register.do" class="" method="post">
    <div class="register">注册页面</div>
    <div class="yourUserName  clearfix">
        <p class="fl">账号:</p>
        <input type="text" class="fr" id="loginName" placeholder="登录名" name="loginName">
    </div>
    <div class="yourPassWord  clearfix">
        <p class="fl">密码:</p>
        <input type="password" class="fr" id="passWord" placeholder="密码" name="password">
    </div>
    <div class="yourUserName  clearfix">
        <p class="fl">姓名:</p>
        <input type="text" class="fr" id="userName" placeholder="姓名" name="name">
    </div>
    <div class="yourPassWord  clearfix">
        <p class="fl">性别:</p>
        <select class="fr" placeholder="性别" id="sex" name="sex">
            <option value="2">--请选择--</option>
            <option value="0">女</option>
            <option value="1">男</option>
        </select>
    </div>
    <div class="email  clearfix">
        <p class="fl">
            邮箱地址:
        </p>
        <input type="text" class="fr" id="email" placeholder="邮箱" name="email">
    </div>
    <div class="address  clearfix">
        <p class="fl">
            地址:
        </p>
        <input type="text" class="fr" id="address" placeholder="地址" name="address"
        ></div>
    <div class="button  clearfix">
        <button type="button" class="fr" id="regButton">点击注册</button>
        <br>
        <span id="meg" style="color: red;margin-left: 13%"></span>
        <br>
    </div>
    <div class="register fr">
        <a href="/toLogin.do">去登录</a>
    </div>
</form>
<script src="../../jquery/jquery-1.11.1-min.js"></script>
<script src="../../jquery/bootstrap_3.3.0/js/bootstrap.min.js"></script>
</body>
<script>
    $("#regButton").click(
        function () {
            let name = $("#name").val();
            let password = $("#password").val();
            let loginName = $("#loginName").val();
            let address = $("#address").val();
            let email = $("#email").val();
            let sex = $("#sex").val()
            $.ajax({
                url : '/register.do',
                type : 'post',
                data : {
                    name : name,
                    lgoinName: loginName,
                    password: password,
                    address : address,
                    email : email,
                    sex : sex,
                },
                dataType : 'json',
                success : function (ret) {
                    if (ret.code == "1"){
                        window.location.href = "toLogin.do"
                    }else{
                        $("#msg").text(ret.message)
                    }
                }
            })
        }
    )
</script>

</html>
