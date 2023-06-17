
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="databaseConnection.connectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@include file="header.jsp" %>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  height:100%;

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
<br>

<center>
<table id = "customers">
<tr>
<th>Blood Bank Adress</th>
<th>city</th>
<th>Helpline No.</th>
<th>E-Mail</th>
<th>Pincode</th>
<th>category</th>
<th>Request Action</th>
</tr> 
<tr>
<%
String bankstate = request.getParameter("state");
String bankdistrict = request.getParameter("district");
try
{
Connection con = connectionProvider.getConnection();
Statement st = con.createStatement();
ResultSet rs =st.executeQuery("select* from registeradmin where state='"+bankstate+"' and district='"+bankdistrict+"'");
while(rs.next())
{
%>
<td><%out.print(rs.getString(10)); %></td>
<td><%out.print(rs.getString(8)); %></td>
<td><%out.print(rs.getString(4)); %></td>
<td><%out.print(rs.getString(2)); %></td>
<td><%out.print(rs.getString(5)); %></td>
<td><%out.print(rs.getString(9)); %></td>
<td><a style="color:blue;" href = "requestVaccine.jsp?bank_id=<%=rs.getInt(1)%>">Send Request</a></td>
<%-- <td><a href = "deleteDonor.jsp?id=<%=rs.getInt(1)%>">Delete</a></td> --%>
</tr>
<%
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</tr>
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
</body>
</html>
<%@include file="footer.jsp" %>

