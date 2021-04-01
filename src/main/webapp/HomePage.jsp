<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IntroPage</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="StyleSheets/IntroPage.css" rel="stylesheet" type="text/css">

<style type="text/css">
#backgroundcontainer
{
    /* border: solid 1px; */
    display: flex;
    text-decoration: none;
    color: white;
    font-size: 20px;
    
}
.row
{
    flex: 1;
    margin: 20px;
    /* border: solid red 1px; */
}
.frontimage
{
    width:100%;
    height:100vh;
    background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.6)),url('StyleSheets/images/airlinelist.jpg');
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    
}
#brandname a
{
    margin: 20px 0px 20px auto;
}
#brandname li
{
	color:white;
	font-size: 34px;
    font-family:sans-serif;
    list-style: none;
    font-weight: 900;
    /* border: solid 1px gold; */
}
#buttonbox
{
	position: relative;
    margin: 0 auto;
    padding: 100px 20px;
    /* border: solid 1px; */
    width: 300px;
    
}
#buttonbox button
{
    width: 100%;
    margin: 20px;
}

</style>

</head>
<body>
	
	<div class="frontimage">
		<div id="backgroundcontainer" >
			<ul id="brandname"  class="row">
				<li>FlyAway</li>
			</ul>
			
		</div>
		<div id="buttonbox">
			<form action="BookTicket.jsp">
				<button type="submit"  class="btn btn-dark">Book Flights</button>
			</form>
			<form action="AdminPage.jsp">
				<button type="submit" class="btn btn-primary" >Admin</button>
			</form>
		</div>
	</div>
	
</body>
</html>