<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>   
    <%
    try{
	String FlightId=request.getParameter("msg");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://aa1y1ghile0p7t1.cv2uqxokjyuy.us-east-1.rds.amazonaws.com:3306/phase2DB","root","rootraja");
//	Connection con=DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/y8Di6i7cMc","y8Di6i7cMc","UDRMxsodUY");
	
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from flights where FlightId='"+FlightId+"'");
	String ticketprice=null;
	String name=null;
	int flightid=0;
	while(rs.next())
	{
		name=rs.getString("Name");
		ticketprice=rs.getString("TicketPrice");
		flightid=rs.getInt("FlightId");
		
		HttpSession Session=request.getSession();
		Session.setAttribute("name", name);
		Session.setAttribute("ticketprice", ticketprice); 
		Session.setAttribute("flightid", flightid);
	}
    }catch(Exception e)
    {
    	System.out.print(e);
    }
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Detail</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="StyleSheets/IntroPage.css" rel="stylesheet" type="text/css">

<style type="text/css">
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

</head>
<body>
	<div id="detailbox" class="bgcolor">
		<form action="details" method="post">
			<label class="formlabel">Passenger Name</label>
			<input type="text" class="form-control" name="passenger" autocomplete="off" required>
			<label class="formlabel">Email Id</label>
			<input type="email"class="form-control"  name="email" autocomplete="off" required>
			<label class="formlabel">Mobile Number</label>
			<input type="number" class="form-control"  name="mobileno" autocomplete="off" required>
			<input type="submit" id="cdbtn" class="btn btn-primary">
		</form>
	</div>
</body>
</html>