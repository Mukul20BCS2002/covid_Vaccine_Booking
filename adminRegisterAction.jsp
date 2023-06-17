<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RaktCenter</title>
</head>
<body>
<jsp:useBean id="adminregisterbean" class="beans.RegisterAdminbean"></jsp:useBean>
<jsp:setProperty property="*" name="adminregisterbean"/>
<jsp:useBean id="adminregisterdao" class="dao.RegisterAdmindao"></jsp:useBean>
<%
String msg = adminregisterdao.registerAdmin(adminregisterbean);
out.println(msg);
if(msg.equals("valid"))
	response.sendRedirect("adminLogin.jsp");
else
	out.print("Something wrong");
%>
</body>
</html>