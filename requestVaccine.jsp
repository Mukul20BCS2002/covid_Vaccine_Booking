<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
    <%
    String bank_id = request.getParameter("bank_id");
    int adminbank_id = Integer.parseInt(bank_id);
    //out.println(adminbank_id);
    %>
<!DOCTYPE html>
<html>
  <head>
    <title>Blood Request Form</title>
    <link rel="stylesheet" href="reestyle.css">
  </head>
  <body>
    <!-- <header>
      <h1>Blood Request Form</h1>
    </header> -->
    <form action="requestVaccineAction.jsp" method="post">
      <fieldset>
        <legend>Personal Information</legend>
        <input type="hidden" name="adminbank_id" value=<%out.print(bank_id); %> required>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <label for="email">Email:</label>
        <input type="email" id="email" name="mail" required>
        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone" required>
        <label for="blood-group">Vaccine Type:</label>
        <select id="blood-group" name="vaccineType" required>
          <option value="">Select Vaccine Type</option>
          <option value="covaxin">covaxin</option>
          <option value="covishield">covishield</option>
          <option value="sputnik-v">sputnik-v</option>
        </select>
        <label for="blood-group">Time Slot:</label>
        <select id="blood-group" name="timeSlot" required>
          <option value="">your prefered time</option>
          <option value="9:30-10:30AM">9:30-10:30Am</option>
          <option value="10:30-11:30Am">10:30-11:30Am</option>
          <option value="11:30-12:30Pm">11:30-12:30Pm</option>
          <option value="2:00-3:00Pm">2:00-3:00Pm</option>
          <option value="3:00-4:00Pm">3:00-4:00Pm</option>
        </select>
      </fieldset>
      <fieldset>
        <legend>Location Information</legend>
        <label for="address">Address:</label>
        <textarea id="address" name="address" rows="4" required></textarea>
      </fieldset>
      <button type="submit">Submit Request</button>
    </form>
  </body>
</html>
<%@include file="footer.jsp" %>

