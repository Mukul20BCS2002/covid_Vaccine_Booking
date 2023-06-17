<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="bloodreqbean" class ="beans.vaccineRequestBean"></jsp:useBean>
<jsp:setProperty property="*" name="bloodreqbean"/>
<jsp:useBean id="bloodreqdao" class = "dao.vaccineRequestdao"></jsp:useBean>
<%
String msg = bloodreqdao.bloodRequest(bloodreqbean);
//System.out.println(msg);
if(msg.equals("valid"))
	response.sendRedirect("index.jsp?message=valid");
else
	response.sendRedirect("index.jsp?message=Invalid");
%>
</body>
</html>