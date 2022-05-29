<%@ page language="java" import="java.util.*" pageEncoding="utf-8" import="java.sql.*" errorPage="error.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>帮助</title>
<link rel="stylesheet" type="text/css" href="css/help.css">
</head>
<body>
<jsp:include page="head.jsp" />
<!--<center> <iframe  frameborder="0" src="helpimg.html" scrolling="no" style="width:1200px;height:550px;"> </iframe> </center>  -->
<table width=90%; height=300px; style="margin-top:38px";>
<tr>
<td width=23%>
<p>&nbsp;</p>
<p>&nbsp;</p>
</td>

<td width=60%>

<h1  class="threed">你好，欢迎来到华工零食店。</h1>
<h3 >本网站专门致力于校内学生的需求，为校内提供便利的服务和有保障的品质。</h3>
<hr style="height:5px;text-align:left;background-color:black">
<h2 class="threed">本站特色</h2>
<h2  class="press">如果您是一位在校生</h2>
<p>这里时线上的交易平台，足不出户，就能了解商品信息；宿舍楼的内部的零食店，随需随购，送货上门，快速收货；还有评价点赞等功能，适当反馈，增强监督。通过我们的平台，您可以体验便捷的服务和可信赖的品质。足不出户，体验各种美食！</p>
<h2 class="press">如果您是一位学生卖家</h2>
<p>通常来说一栋宿舍楼只招收一名学生卖家。通过注册成为我们的一个卖家，可以在网站平台上上传商品信息，完成商品展示。线上接单之后需要立刻送达。本网站为课余时间比较充裕的学生提供了一个课外赚钱的平台，而且锻炼了资深的理财能力，从而提升自己。</p>
<hr style=" text-align:left;">
<h2 class="threed">用户使用</h2>
<h2 class="press">如果你是新用户</h2>
<p>1.单击主页右上角的“注册”按钮，进入注册页面，选择“普通用户注册”，输入你的账号、密码，并确认密码，再输入性别、昵称、手机号、宿舍楼号和房间号等信息。单击注册。</p>
<p>2.显示注册成功后进入登陆页面。输入用户名（即账号）和密码，并输入系统自动生成的验证码，点击登陆。</p>
<p>3.登陆后进入个人主页，该页面显示自己的基本信息，左侧导航栏还有修改个人信息，查看购物车，查看订单、历史和评价。</p>
<p>4.登陆后单击横排导航栏的主页按钮，进入我们的主界面，可以在推荐界面挑选商品，或者在搜索框搜索商品。</p>
<h2 class="press">如果你是老用户</h2>
<p>1.进入登陆页面。输入用户名（即账号）和密码，并输入系统自动生成的验证码，点击登陆。</p>
<p>2.登陆后进入个人主页，该页面显示自己的基本信息，左侧导航栏还有修改个人信息，查看购物车，查看订单、历史和评价。</p>
<p>3.登陆后单击横排导航栏的主页按钮，进入我们的主界面，可以在推荐界面挑选商品，或者在搜索框搜索商品。</p>
<hr style="border-top:2px dotted black;align:left;">
<h2 class="press">如果你想成为商家</h2>
<p>1.单击主页右上角的“注册”按钮，进入注册页面，选择“商家注册”，输入你的账号、密码，并确认密码，再输入性别、昵称、手机号、宿舍楼号和房间号等信息。单击注册。</p>
<p>2.显示注册成功后进入登陆页面。输入用户名（即账号）和密码，并输入系统自动生成的验证码，点击登陆。</p>
<p>3.登陆后进入个人主页，该页面显示自己的基本信息，左侧导航栏还有修改个人信息，发布商品，查看出售中商品，接收订单，查看待发货订单，最后还可以将订单导出成excel表。</p>
<h2 class="press">如果你是已注册的商家</h2>
<p>1.显示注册成功后进入登陆页面。输入用户名（即账号）和密码，并输入系统自动生成的验证码，点击登陆。</p>
<p>2.登陆后进入个人主页，该页面显示自己的基本信息，左侧导航栏还有修改个人信息，发布商品，查看出售中商品，接收订单，查看待发货订单，最后还可以将订单导出成excel表。</p>
<hr style="height:5px;text-align:left;background-color:black">
<h3>本网站解决了现在校园里各栋宿舍楼有零食代售却无法展示自己商品的弊端，线上支付方式更为系统集中化。</h3>
</td>

<td width=15%>
<p>&nbsp;</p>
</td>
</tr>
</table>
<jsp:include page="foot.jsp" />
</body>
</html>