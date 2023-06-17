<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseConnection.connectionProvider"%>
<%@page import="java.sql.Connection"%>
<%
String mail = request.getParameter("mail");
try
{
	Connection con = connectionProvider.getConnection();
	PreparedStatement pst = con.prepareStatement("delete from requestVaccination where mail='"+mail+"'");
	pst.executeUpdate();
	response.sendRedirect("requestForVaccine.jsp");
}
catch(Exception e)
{
	response.sendRedirect("requestForVaccine.jsp");
}
%>