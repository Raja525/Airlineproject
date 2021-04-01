<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="StyleSheets/IntroPage.css" rel="stylesheet" type="text/css">

<style>
	
#detailbox
{
	padding:160px 350px;
	height:100vh;
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
#cdbtn
{
	margin:20px;
	float:right;
}
	
</style>
</style>

</head>
<body>
		<div id="detailbox" class="bgcolor">
		<form action="receiptpage" method="post">
			<label class="formlabel">Card Name</label>
			<input type="text" class="form-control" name="cardname" required>
			<label class="formlabel">Card Number</label>
			<input type="number"class="form-control"  name="cardno" autocomplete="off" required>
			<input type="submit" id="cdbtn" class="btn btn-primary">
		</form>
	</div>
</body>
</html>