<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseConnection.connectionProvider"%>
<%@page import="java.sql.Connection"%>
<%
String vaccineType = request.getParameter("vaccineType");
String incdec = request.getParameter("incdec");
String unit = request.getParameter("units");
int unit1 = Integer.parseInt(unit);
try
{
	Connection con = connectionProvider.getConnection();
	PreparedStatement pst;
	if(incdec.equals("inc"))
			{
		pst = con.prepareStatement("update stock set units=units+'"+unit1+"' where vaccineType='"+vaccineType+"'");
		pst.executeUpdate();
			}
	else
	{
		pst = con.prepareStatement("update stock set units=units-'"+unit1+"' where vaccineType='"+vaccineType+"'");
		pst.executeUpdate();
	}
	response.sendRedirect("manageStock.jsp?msg=valid");
}
catch(Exception e)
{
	response.sendRedirect("manageStock.jsp?msg=invalid");
}
%>