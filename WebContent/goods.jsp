<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*" import="java.util.Date"
    pageEncoding="utf-8" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品</title>
<link rel="stylesheet" type="text/css" href="css/goodinfo.css" />
</head>
<body>
<jsp:include page="head.jsp" />

<%
request.setCharacterEncoding("utf-8");
String name = (String)session.getValue("sessionid");
String ownid=request.getParameter("ownid");
String gname=request.getParameter("gname");
    session.setMaxInactiveInterval(11);//设置session的有效活动时间为11s
    Date now = new Date();
    int h=0;
    int m=0;
    int s=0;

    System.out.println(session.isNew());
        if (!session.isNew())
        {
            session.setAttribute("start", now);
            Date date = (Date) session.getAttribute("start");
            Date end = new Date();
            long howmuch = end.getTime() - (date.getTime());
            h = (int) (howmuch / 1000 / 60 / 60);//计算在网站停留的小时
            howmuch = howmuch - h * 60 * 60 * 1000;
            m = (int) (howmuch / 1000 / 60);//计算在网站停留的分钟
            howmuch = howmuch - m * 60 * 1000;
            s = (int) (howmuch / 1000);//计算在网站停留的秒
        }
        else
        {
            session.setAttribute("start", now);
        }

System.out.println("商家="+ownid+"货物名="+gname);
    Class.forName("com.mysql.cj.jdbc.Driver");//连接数据库
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Hg_Snacks","root","123456789Aa");
String sql="select * from goods where gname='"+gname+"'and ownid='"+ownid+"'"; //sql语句，查找货物
String sql1="select * from carts join  users on carts.userid=users.userid where gname='"+gname+"'and ownid='"+ownid+"'and carts.userid='"+name+"'"; //sql语句，查找该货物订单及用户表，用于找到评价级用户的信息    
Statement stmt = con.createStatement();
Statement stmt1 = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);               //货物结果集
ResultSet rs1 = stmt1.executeQuery(sql1);               //订单结果集
int result=0;
String img = null,gn = null,gp = null,gs = null,gl = null,gi = null,gnum=null;
while(rs.next())                                     //循环查找普通用户：学生结果集
{
	img = rs.getString("gpicture");
	gn = rs.getString("gname");
	gp = rs.getString("gprice");
	gs = rs.getString("gsold");
	gl = rs.getString("glike");
	gi = rs.getString("ginfor");
	gnum=rs.getString("gnum");
	//out.println(rs.getString("gpicture")+" == "+rs.getString("gname")+" == "+" == "+rs.getString("gprice")+" == "+rs.getString("gsold")+" == "+rs.getString("glike")+" == "+rs.getString("ginfor")+" == ");
}
//out.println("<tr><td colspan='3'><a href=addtocart.jsp?gname="+gname+"&ownid="+ownid+">加入购物车</a></td><td colspan='3'><a href=pay.jsp?gname="+gname+"&ownid="+ownid+">立即支付</a></td></tr>");	
%>
<meta http-equiv="refresh" contene="10">    <!-- 设置刷新时间 -->
  <center><table width="68%" border="0" align="center" style="margin-top:63px">
  <tr>
    <td width="29%" valign="top" bgcolor="#6495ED"><div class="good">
    <%
    	out.println("<img style='background-color:white;' src='" + img + "' alt='' width='100%' height='99%' />");
     %>
    <div style="text-align:start;background-color:#6495ED;">
    <ul class="simpleul">
    	<li><div id="like" style="display:inline-block;float:left;color:blue;size-weight:boid;"><img name="" src="img/like.png" width="26" height="30" alt="" style="float:left;margin-left:5px" /><%out.println(gl); %></div></li>
        <li><a href="javascript:;" onClick="like()" style="float:right;text-decoration:none;cursor:pointer;margin-right:5px">&nbsp;&nbsp;&nbsp;&nbsp;赞一个<img alt="点赞" src="img/zan.png"></a></li>
    </ul>
    </div>
    </div></td>
    <td width="71%" style="text-indent:30px;">
    <h1 class="yangshi"><%out.println(gn); %> </h1>
    <h3 class="yangshi2"><%out.println(gp); %>元</h3>
    <h3 class="yangshi3">商品类别：<%out.println(gi); %></h3>
    <h3 class="yangshi3">商品剩余：<%out.println(gnum); %></h3>
    <h3 class="yangshi3" style="margin-bottom:35px;"> 月销量：<%out.println( gs); %></h3>
    
    <p ><%out.println("<a class='button' href=addtocart.jsp?gname="+gname+"&ownid="+ownid+">加入购物车</a>");	 %>
</td>
  </tr>
  <tr>
    <td colspan="2"><h2 class="yangshi2" style="color:#535353">评价</h2>
      <form id="form1" name="form1" method="post" action="evaluate.jsp">
        <textarea name="textarea" id="textarea" cols="45" rows="5" style=" border:solid 2px #FFCC33; border-radius:10px; resize:none;"></textarea>
        <input type="hidden" name="ownid" value="<%=ownid%>"/>
        <input type="hidden" name="gn" value="<%=gn%>" />
        <input style="float:right;margin-top:10px;"  type="submit" name="evaulate" id="button" value="提交评价" class="button" /> 
      </form>
    <p>
    </p></td>
  </tr>
  <tr><td colspan="2">
	<h2 class="yangshi2" style="color:#535353" >来自买家的评价：</h2>
	<marquee direction="up"  behavior="scroll" height="70"  width="300px"  scrollamount="2" behavior="alternate" loop="-1" scrolldelay="15" onmouseover = "stop()" onmouseout = "start()">
	<% 
	while(rs1.next())                                     //订单结果集
	{
		if(rs1.getString("comment").equals("未评论")){   //未评论
			
			}
			else
			{
				out.println("<div class='evaluate'><p style='font-size:20px;'><img src='"+rs1.getString("u_profile")+"' width='20' height='20' alt=''>"+rs1.getString("username")+":"+rs1.getString("comment")+"</p></div>");
			}
	}
	stmt.close();
	stmt1.close();
	con.close();
	%>
	<div class="evaluate"><p style="font-size:20px;"><img src="img/heshang.jpg" width='20' height='20' alt=''>嘿嘿：很好吃呀！</p></div>
	<div class="evaluate"><p style="font-size:20px;"><img src="img/shuai.jpg" width='20' height='20' alt=''>时间煮鱼：女朋友喜欢吃！</p></div>
	<div class="evaluate"><p style="font-size:20px;"><img src="img/xiujie.jpg" width='20' height='20' alt=''>bush：真不错！</p></div>
    <div class="evaluate"><p style="font-size:20px;"><img src="img/boy.jpg" width='20' height='20' alt=''>心静者得天下：下次还来买！</p></div>
	</marquee>
	</td></tr>
      <tr>
          <td align="center">
              您进入该页面的时间为:<%=((Date)session.getAttribute("start")).toLocaleString() %>
          </td>
      </tr>

</table>
</center>
<jsp:include page="foot.jsp" />
</body>
</html>

