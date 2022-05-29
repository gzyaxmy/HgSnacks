<%@ page language="java" import="java.util.*" pageEncoding="utf-8" import="java.sql.*" errorPage="error.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>华工零食店</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="js/demo.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-3.2.1.js"></script>

	       
  </head>
  
  <body onLoad="load()" style="margin-top: 0px;margin-bottom:0px;background-color:#6495ed;">
  <jsp:include page="head.jsp" />
    <!-- 网页整体布局 -->
    <table width="100%" border="0" align="center">
         <!--搜索框  -->
          <tr>
            <td colspan="3" align="center" valign="middle" style="margin-top: 0px;">
            <form style="margin-top: -91px;margin-bottom: 0px; font-size: 36px;margin-left:108px;margin-right:-20px" name="form1" method="post" action="shopping.jsp">
              
              <input placeholder="   输入商品名搜索" onClick="hideSearch()" type="text" name="search_text" id="search_text" style="background:url('img/search.png');background-repeat:no-repeat;background-position: 5px,center;border-bottom-left-radius:10px;border-top-left-radius:10px;">
              <button type="submit" id="search_button" style="border-radius:6px;">搜索</button>
              <img src="img/search.png" style="width:160px;visibility:hidden;">
            </form>
            </td>
          </tr>
          <tr>
          	<td></td>

          	<td><a href="javascript:;" style="text-decoration:none;" float:left></a><marquee scrollamount="2" style="width:91%;font-size:14px;color:#ff6600;">
                这里是线上的交易平台，足不出户，就能了解商品信息；宿舍楼的内部的零食店，随需随购，送货上门，快速收货；还有评价点赞等功能，适当反馈，增强监督。通过我们的平台，您可以体验便捷的服务和可信赖的品质。足不出户，体验各种美食！</marquee></td>
          	<td></td>
          </tr>
          <tr>
           <td width="15%" > 
           <p>&nbsp;</p>
      
           
            <!-- 轮播图 -->
            <td width="67%"  height=400px  valign="top" style="margin-top: 2px">
            	         <iframe src="shuffling/index.html" scrolling="no" style="width:100%;height:100%;"> </iframe>
            	<!-- 轮播图结束 -->
            </td>
            
            
            <!-- 公告栏 -->
            <td width="30%"  valign="top" align="center" height="303px">
              
            </td>
          </tr>
          
          
          <!-- 精品推荐 -->
          <tr>
         
           <td width="10%"> 
           <p>&nbsp;</p>
           </td>
           
          <td colspan="2" valign="top" rowspan="2" width="70%">
         	<div style="top:0px;width:80%;height:50px;background:#ff5c;border-bottom: solid 3px red;">
         	<div id="line"></div>
          	<ul class="classification">
            	<li ><h2>精品推荐</h2></li>
            	<li ><h2>果汁饮料</h2></li>
            	<li ><h2>饼干蛋糕</h2></li>
            	<li ><h2>糖果奶酪</h2></li>
            	<li ><h2>膨化食品</h2></li>
            	<li ><h2>豆干类</h2></li>
            	<li ><h2>坚果</h2></li>
            </ul>
            </div>
            <div class="goodss" style="clear:left;">
            	<a><img src="img/miaofu.jpg" width="150px" height="150px"/><br>
                    妙芙蛋糕<br></a>
            	<b>￥13.0</b>
            </div>
            <div class="goodss" >
            	<a><img src="img/cake.jpg" width="150px" height="150px"/><br>
                    港蒸荣蛋糕<br></a>
            	<b>￥12.5</b></a>
            </div>
            
            <div class="goodss" >
            	<a><img src="img/leshi.png" width="150px" height="150px"/><br>
            	乐事无限薯片<br></a>
            	<b>￥7.5</b>
            </div>
           
            <div class="goodss" >
            	<a><img src="img/mahua.png" width="150px" height="150px"/><br>
            	良品天津麻花<br></a>
            	<b>￥20.0</b>
            </div>
          </td>
          
          <td width="20%"> 
           <p>&nbsp;</p>
           </td>
          </tr>
          
          <tr>
            <td height="200px">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
   		<!-- 网页整体布局结束 -->
   		<div id="cover"></div>
        <div id="regist">
        	<a id="userRegist" href="regist.jsp" target="regist">普通用户注册</a>&nbsp;&nbsp;&nbsp;<a id="ownerRegist" href="own_regist.jsp" target="regist">商家注册</a><span><a onClick="closeRegist()" style="float: right;" href="javascript:;">X</a></span>
        	<hr color="red" />
        	<iframe name="regist" src="regist.jsp">
        	</iframe>
        </div>

        <jsp:include page="foot.jsp" />
  </body>
</html>
