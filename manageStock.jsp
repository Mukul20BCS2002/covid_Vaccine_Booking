<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="databaseConnection.connectionProvider"%>
<%@include file="header.html"%>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"],select
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 55%;
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
String msg = request.getParameter("msg");
if("invalid".equals(msg))
{
%>
<center><font color="red" size="5">Something---went wrong</font></center>
<%
}
%> 
<%
if("valid".equals(msg))
{
%>
<center><font color="red" size="5">Successfully updated</font></center>
<%
}
%> 
<form action = "manageStockAction.jsp" method="post">
<div class="form-group">
<center><h2>Select Vaccine Type</h2></center>
<select name="vaccineType">
<option value="">Vaccine Type</option>
<option value="Covaxin">Covaxin</option>
<option value="Covishield">Covishield</option>
<option value="Sputnik-V">Sputnik-V</option>
</select>

<center><h2>Select Increase/Decrease</h2></center>
<select name="incdec">
<option value="">Select choice</option>
<option value="inc">Increase</option>
<option value="dec">Decrease</option>
</select>
<center><h2>Units</h2></center>
<input type="text" placeholder="Enter units" name="units">
<center><button type="submit" class="button">Save</button></center>
</div>
</form>
<br>
<center>
<table id="customers">
<tr>
<th>VaccineType</th>
<th>Units</th>
</tr>
<tr>
<%
try
{
	Connection con = connectionProvider.getConnection();
	PreparedStatement pst = con.prepareStatement("select* from stock");
	ResultSet rs = pst.executeQuery();
while(rs.next())
{
%>
<td><%=rs.getString(1) %>
<td><%=rs.getString(2) %>
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
<h3><center>All Right Reserved @ covid vaccination :: 2023  </center></h3>
</body>
</html>