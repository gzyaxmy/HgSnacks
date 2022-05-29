<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*"
    pageEncoding="utf-8" errorPage="error.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
<link href="css/login_css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/demo.js" ></script>

<style type="text/css">
body {
	background-image: url(img/denglu.jpg);
	background-repeat:no-repeat;
	background-size:cover;
}
</style>
</head>
<body>
<div id="log" >
<form name="Login" method="post" action="loginjudge.jsp">
    <p></p>
    <table width="300" height="175" border="0" align="center">
      <tr>
        <td width="120" align="right">用户名： </td>
        <td colspan="2" align="center"><input oninput="check_user()" name="id" type="text" id="user" tabindex="1" placeholder="用户名" class="log_input"></td>
      </tr>
      <tr>
        <td align="right">密码：</td>
        <td colspan="2" align="center"><input onkeyup="value=value.replace(/[^\u0020-\u007e]/ig,'')" oninput="check_pass()" type="password" name="pwd" id="password" tabindex="2" placeholder="密码" class="log_input"></td>
      </tr>
      <tr>
        <td align="right">验证码：
        <label for="verify"></label></td>
        <td colspan="2" align="center"><input type="text" name="verify" id="identify" tabindex="3" placeholder="验证码" class="log_input"></td>
      </tr>
      <tr>
        <td align="center" colspan="2"><p><a href="retrieve_password.html"></a><img alt="code..." name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle"></td></p>
        </td>
        <td width="150" align="left"><a href="javascript::" style="font-size:12px;margin-bottom:1px" onclick="reloadImage()">看不清，换一张</a></td>
      </tr>
    </table>
    <p><label id="tip">&nbsp;</label></p>
    <!-- <p><label id="tip2">&nbsp;</label></p> -->
    <a href="javascript:;" style="text-decoration:none;"><input disabled="disabled" type="submit" name="login_button" value="登录" id="login_button" tabindex="4"></a></p>
    <p class="tip">还没有账号？点击<a href='javascript:;' onclick='showRegist()'>注册</a></p>
  </form>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
	<div id="cover"></div>
    <div id="regist">
       <a id="userRegist" href="regist.jsp" target="regist">普通用户注册</a>&nbsp;&nbsp;&nbsp;<a id="ownerRegist" href="own_regist.jsp" target="regist">商家注册</a><span><a onClick="closeRegist()" style="float: right;" href="javascript:;">X</a></span>
       <hr color="red" />
       <iframe name="regist" src="regist.jsp">
       </iframe>
    </div>
</body>
</html>