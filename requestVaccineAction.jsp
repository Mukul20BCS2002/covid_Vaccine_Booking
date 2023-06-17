<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="requestvaccinebean" class="beans.vaccineRequestBean"></jsp:useBean>
<jsp:setProperty property="*" name="requestvaccinebean"/>
<jsp:useBean id="requestvaccinedao" class="dao.vaccineRequestdao"></jsp:useBean>
<%
String msg = requestvaccinedao.vaccineRequest(requestvaccinebean);
if(msg.equals("valid"))
	response.sendRedirect("checkAvail.jsp");
%>
</body>
</html>