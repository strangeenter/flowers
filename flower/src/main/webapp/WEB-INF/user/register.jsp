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
    width: 600px;
    height: 700px;
    text-align: center;
    position: relative;
    margin: 0 auto;
    background-color: rgba(0, 0, 0, .5);
    margin-top: 6%;
    border-radius: 20px;
    padding-top: 20px;
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
  .button{
    width: 450px;
    margin: 0 auto;
    margin-top: 30px;
    box-sizing: border-box;
  }

  .yourPassWord,
  .yourUserName,
  .email {
    color: whitesmoke;
    font-size: 20px;
    line-height: 10px;
  }

  #userName,
  #passWord,
  #email{
    height: 50px;
    width: 320px;
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
    margin-top: 20px;

  }

  .register a {
    color: whitesmoke;
    font-size: 18px;
  }
  input{
    color:whitesmoke;
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
<form action="#" class="" method="post">
  <div class="register">注册页面</div>
  <div class="yourUserName  clearfix"><p class="fl">用户名:</p><input type="text" class="fr" id="userName" placeholder="账号"></div>
  <div  class="yourPassWord  clearfix"><p class="fl">注册密码:</p><input type="text" class="fr" id="passWord" placeholder="密码"></div>
  <div  class="email  clearfix"><p class="fl">邮箱地址:</p><input type="text" class="fr" id="email" placeholder="邮箱"></div>
  <div class="button clearfix"><button type="submit" class="fr" id="button">点击注册</button></div>
  <div class="register fr"><a href="/toLogin.do">点击跳转到登录页面</a> </div>
</form>
<script src="../../jquery/jquery-1.11.1-min.js"></script>
<script src="../../jquery/bootstrap_3.3.0/js/bootstrap.min.js"></script>
</body>

</html>
