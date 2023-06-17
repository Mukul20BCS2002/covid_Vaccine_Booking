<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseConnection.connectionProvider"%>
<%@page import="java.sql.Connection"%>


<%@include file="header.html"%>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<%
String bank_id = (String)session.getAttribute("id");
int admin_bank = Integer.parseInt(bank_id);
%>
<br>
<center>
<table id="customers">
<tr>
<th>Name</th>
<th>E-Mail</th>
<th>Mobile number</th>
<th>Vaccine Type</th>
<th>Time Slot</th>
<th>Address</th>
<th>Done</th>
</tr>
<tr>
<%
try
{
	Connection con = connectionProvider.getConnection();
	PreparedStatement pst = con.prepareStatement("select* from requestvaccination where adminbank_id='"+admin_bank+"' and status='panding'");
	ResultSet rs = pst.executeQuery();
	while(rs.next())
	{
%>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
<td><a href="requestForVaccinationDone.jsp?mail=<%=rs.getString(3)%>">Done</a></td>
</tr>
<%
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</table>



</center>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @ Covid vaccination :: 2023  </center></h3>
</body>
</html>