<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseConnection.connectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String user = request.getParameter("username");
String pass = request.getParameter("password");
int admin_id=1;
try
{
	Connection con = connectionProvider.getConnection();
	PreparedStatement pst = con.prepareStatement("select id from loginadmin where username='"+user+"' and password='"+pass+"'");
	ResultSet rst = pst.executeQuery();
	if(rst.next())
	{
		admin_id = rst.getInt(1);
	}
	session.setAttribute("id",String.valueOf(admin_id));
}
catch(Exception e)
{
	e.printStackTrace();
}
//out.print(adminbank_id);
%>

<jsp:useBean id="adminlogbean" class="beans.LoginAdminbean"></jsp:useBean>
<jsp:setProperty property="*" name="adminlogbean"/>
<jsp:useBean id="adminlogdao" class="dao.LoginAdmindao"></jsp:useBean>
<%
String message = adminlogdao.loginAdmin(adminlogbean);
if(message.equals("valid"))
	response.sendRedirect("home.jsp");
else
	response.sendRedirect("adminLogin.jsp?msg=Invalid");   
%>
</body>
</html>