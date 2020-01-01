<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Database.DbConnection"%>
<html>
<body>
<form name="form1" method="post" action="" enctype="multipart/form-data">
<h1>Insert an Image into MySQL Database!</h1>
<input type="text" name="fname"><br><br>
<input type="text" name="lname"><br><br>
<input type="text" name="email"><br><br>
<input type="file" name="myimg"><br><br>
<input type="submit" name="submit" value="Submit">
</form>
</body>
</html>

<%

PreparedStatement pstmt = null;
ResultSet rs=null;
FileInputStream fis=null;
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String myloc=request.getParameter("myimg");
//out.print("First Name :"+fname+"myloc="+myloc);
try{

	 Connection con = DbConnection.getconnection();
File image= new File(myloc);
pstmt = con.prepareStatement("insert into user values(?,?,?,?)");
pstmt.setString(1, fname);
pstmt.setString(2, lname);
pstmt.setString(4, email);
fis=new FileInputStream(image);
pstmt.setBinaryStream(3, (InputStream) fis, (int) (image.length()));
int count = pstmt.executeUpdate();
if(count>0)
{
out.println("insert successfully");
}
else
{
out.println("not successfully");
}
}
catch(Exception ex)
{
ex.printStackTrace();
}
finally{
try{
if(rs!=null){
rs.close();
rs= null;
}
if(pstmt !=null)
{
pstmt.close();
pstmt=null;
}

}
catch(Exception e)
{
e.printStackTrace();
}
}
%>