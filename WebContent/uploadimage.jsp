<%@ page contentType="text/html;charset=gb2312" errorPage="error.jsp" language="java" import="java.io.*,java.awt.Image,java.awt.image.*,com.sun.image.codec.jpeg.*,java.sql.*,com.jspsmart.upload.*,java.util.*"%>
<%
String name = (String)session.getValue("sessionid");
SmartUpload mySmartUpload =new SmartUpload();
long file_size_max=4000000;
String fileName2="",ext="",testvar="";
String url="upload/"; //Ӧ��֤�ڸ�Ŀ¼���д�Ŀ¼�Ĵ��ڣ�Ҳ����˵��Ҫ�Լ�������Ӧ���ļ��У�
//��ʼ��
mySmartUpload.initialize(pageContext);
//ֻ�������ش����ļ�
try {
mySmartUpload.setAllowedFilesList("png,jpg,gif,JPG,PNG,JIF");//�˴����ļ���ʽ���Ը�����Ҫ�Լ��޸�
//�����ļ�
mySmartUpload.upload();
} catch (Exception e){
%>
<SCRIPT language=javascript>
alert("ֻ�����ϴ�.png,.jpg,JPG,PNG��.gif����ͼƬ�ļ�");
window.location='upload.html';
</script>
<%
}
try{
com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(0);
if (myFile.isMissing()){%>
<script language=javascript>
alert("����ѡ��Ҫ�ϴ����ļ�");
window.location='upload.html';
</script>
<%}
else{
//String myFileName=myFile.getFileName(); //ȡ�����ص��ļ����ļ���
ext= myFile.getFileExt(); //ȡ�ú�׺��
int file_size=myFile.getSize(); //ȡ���ļ��Ĵ�С
String saveurl="";
if(file_size<file_size_max){
//�����ļ�����ȡ�õ�ǰ�ϴ�ʱ��ĺ�����ֵ
Calendar calendar = Calendar.getInstance();
String filename = String.valueOf(calendar.getTimeInMillis());
saveurl=application.getRealPath("/")+url;//���������⣿
saveurl+=filename+"."+ext; //����·��
myFile.saveAs(saveurl,SmartUpload.SAVE_PHYSICAL);
url+=filename+"."+ext;
String ret = "parent.HtmlEdit.focus();";
ret += "var range = parent.HtmlEdit.document.selection.createRange();" ;
ret += "range.pasteHTML('<img src=\"" + request.getContextPath() + "/upload/" + filename + "." + ext + "\">');" ;
ret += "alert('�ϴ��ɹ���');";
ret += "window.location='upload.html';";
out.print("<script language=javascript>" + ret + "</script>");
request.setCharacterEncoding("utf-8");
    Class.forName("com.mysql.cj.jdbc.Driver");//�������ݿ�
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Hg_Snacks","root","123456789Aa");
String sql="update users set u_profile='"+url+"' where userid='"+name+"'"; 
Statement stmt = con.createStatement();
stmt.executeUpdate(sql);
System.out.println(sql);
stmt.close();//�ر����ݿ�
}
}
}catch (Exception e){
out.print(e.toString());
}
%>
<script language=javascript>alert("�ϴ��ɹ�������");</script>
<script type="text/javascript">window.top.location="user.jsp"</script>
