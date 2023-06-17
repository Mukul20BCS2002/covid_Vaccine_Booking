<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseConnection.connectionProvider"%>
<%@page import="java.sql.Connection"%>
<%
String mail_request = request.getParameter("mail");
try
{
	Connection con = connectionProvider.getConnection();
	PreparedStatement pst = con.prepareStatement("update requestvaccination set status='completed' where mail=?");
	pst.setString(1,mail_request);
	pst.executeUpdate();
	response.sendRedirect("requestForVaccine.jsp");
}
catch(Exception e)
{
	response.sendRedirect("requestForVaccine.jsp");
}
%>