<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket Booking</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="StyleSheets/IntroPage.css" rel="stylesheet" type="text/css">

<style>
	.custom-select
{
	width:100%;
}
#bookingform
{
	padding:160px 350px;
	height:100vh;
}
#sfbtn
{
	margin:20px;
	float:right;
}
.bgcolor
{
	 background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.6)),url('../StyleSheets/images/airlinelist.jpg'); 
	background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
#adminbg
{
	margin:0px;
	background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.6)),url('StyleSheets/images/airlinelist.jpg'); 
	background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
input,select
{
	margin-bottom:10px;
}
label,.whitebig
{
	color:white;
	font-size:22px;
	font-weight:600;
}
	
</style>

</head>
<body>
	
	<form class="bgcolor" action="booking" method="post" id="bookingform">
	
    	<label class="form-label">Source</label>
  			<select class="form-select" id="inputGroupSelect01" name="source" required>
    			<option selected>Choose...</option>
    			<option value="INDIA">INDIA</option>
  				<option value="USA">USA</option>
  				<option value="UK">UK</option>
  			</select>
    	<label class="form-label">Destination</label>
  			<select class="form-select" id="inputGroupSelect01" name="destination" required>
    			<option selected>Choose...</option>
    			<option value="INDIA">INDIA</option>
  				<option value="USA">USA</option>
  				<option value="UK">UK</option>
  			</select>
		<label class="form-label">No of Persons</label>
  			<select class="form-select" id="inputGroupSelect01" name="seats" required>
    			<option selected>Choose...</option>
    			<option value="1">1</option>
  				<option value="2">2</option>
  				<option value="3">3</option>
  				<option value="4">4</option>
  				<option value="5">5</option>
  			</select>
  		<label class="form-label">Date</label>
		<input type="date" class="form-select"  name="date" required>
		<input type="submit" id="sfbtn" class="btn btn-dark" value="Search Flight">
	</form>
	
</body>
</html>