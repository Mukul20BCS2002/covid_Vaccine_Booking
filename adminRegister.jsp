<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"],select,input[type="textarea"]
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
</style>
</head>
<body>
<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a href="mainHome.jsp">Home</a>
    <a class="active" href="adminLogin.jsp">Admin Login</a>
    <a href="adminRegister.jsp">Admin Register</a>
  </div>
</div>
<body>
<div class="container">
<br>
<form action = "adminRegisterAction.jsp" method = "post">
<div  class = "form-group">
<input type = "hidden" name = "bank_id">
<center><h2>User Id</h2></center>
<input type = "text" placeholder = "Enter E-Mail" name = "user" required>
<center><h2>Password</h2></center>
<input type = "password" placeholder = "Enter Password" name = "password" required>
<center><h2>HelpLine No.</h2></center>
<input type = "text" placeholder = "Enter Helpline No." name = "mobile" required>
<center><h2>PinCode</h2></center>
<input type = "text" placeholder = "Enter Pincode" name = "pincode" required>
<center><h2>State</h2></center>
<select id="state" name="state">
				<option value="">--Select State--</option>
				<option value="Andhra Pradesh">Andhra Pradesh</option>
				<option value="Arunachal Pradesh">Arunachal Pradesh</option>
				<option value="Assam">Assam</option>
				<option value="Bihar">Bihar</option>
				<option value="Chhattisgarh">Chhattisgarh</option>
				<option value="Goa">Goa</option>
				<option value="Gujarat">Gujarat</option>
				<option value="Haryana">Haryana</option>
				<option value="Himachal Pradesh">Himachal Pradesh</option>
				<option value="Jammu and Kashmir">Jammu and Kashmir</option>
				<option value="Jharkhand">Jharkhand</option>
				<option value="Karnataka">Karnataka</option>
				<option value="Kerala">Kerala</option>
				<option value="Madhya Pradesh">Madhya Pradesh</option>
				<option value="Maharashtra">Maharashtra</option>
				<option value="Manipur">Manipur</option>
				<option value="Meghalaya">Meghalaya</option>
				<option value="Mizoram">Mizoram</option>
				<option value="Nagaland">Nagaland</option>
				<option value="Odisha">Odisha</option>
				<option value="Punjab">Punjab</option>
				<option value="Rajasthan">Rajasthan</option>
				<option value="Sikkim">Sikkim</option>
				<option value="Tamil Nadu">Tamil Nadu</option>
				<option value="Telangana">Telangana</option>
				<option value="Tripura">Tripura</option>
				<option value="Uttar Pradesh">Uttar Pradesh</option>
				<option value="Uttarakhand">Uttarakhand</option>
				<option value="West Bengal">West Bengal</option>
			</select>
			<center><h2>District</h2></center>
			<select id="district" name="district">
				<option value="">--Select District--</option>
				
			</select>
<center><h2>city</h2></center>
<input type = "text" placeholder = "Enter city Name" name = "city" required>			
<center><h2>category</h2></center>
<select name="category">
				<option value="">--Select category--</option>
				<option value="Goverment">Goverment</option>
				<option value="private">Private</option>
				<option value="Charitable">Charitable</option>
			</select>
<center><h2>Vaccination center Address</h2></center>
<input type = "textarea" placeholder = "Address" name = "bankaddress" required>
<center><button type="submit" class="button">Submit</button></center>
</div>
</form>
	
</div>
<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @ Covid vaccination :: 2023  </center></h3>
<script src="search1.js"></script>
</body>
</html>
