<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %> 
<%@ page import="java.sql.*" %>     
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="StyleSheets/IntroPage.css" rel="stylesheet" type="text/css">

<style>
	#header,#table_title
{
    text-align: center;
    padding:20px 0px 40px 0px;
}
#subgroup
{
    width: 100%;
}
#subgroup .btn
{
	margin:50px 20px 20px 20px;
	width:200px;
}
#table
{
	width:100%;
	height:100vh;
	padding: 20px 20px;
}
</style>

</head>
<body>
	<div id="header">
		<h1>Admin Dashboard</h1>
		<div id="subgroup">
		<a href="changepassword.jsp"><button class="btn btn-danger">Change Password</button></a>
		<a href="addflight.jsp"><button class="btn btn-primary">Add Flight</button></a>
		<a href="Places.jsp"><button class="btn btn-primary">Places</button></a>
		<a href="Airlines.jsp"><button class="btn btn-primary">Airlines</button></a>
		<a href="HomePage.jsp"><button class="btn btn-dark">Logout</button></a>
		</div>
	</div>
	<div  id="table">
		<h3 id="table_title">Flight Database Table</h3>
		<table class="table">
  			<thead>
    			<tr>
      		<th scope="col">FlightId</th>
      		<th scope="col">Name</th>
      		<th scope="col">Source</th>
      		<th scope="col">Destination</th>
      		<th scope="col">Day</th>
      		<th scope="col">Ticket Price</th>
    			</tr>
  			</thead>
  			<tbody>
  			<%
  			try{
	Class.forName("com.mysql.jdbc.Driver");
//AWS RDS
	Connection con=DriverManager.getConnection("jdbc:mysql://aa1y1ghile0p7t1.cv2uqxokjyuy.us-east-1.rds.amazonaws.com:3306/phase2DB","root","rootraja");
//LocalDB
	//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/sys","root","rootraja");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from flights");
	while(rs.next())
	{
%>		
	
  				<tr>
  					<th><%=rs.getString("FlightId") %></th>
  					<th><%=rs.getString("Name") %></th>
  					<th><%=rs.getString("Source") %></th>
  					<th><%=rs.getString("Destination") %></th>
  					<th><%=rs.getString("Day") %></th>
  					<th><%=rs.getString("TicketPrice") %></th>
  				</tr>
  <%}}catch(Exception e)
  			{
	  System.out.print(e);
  			}
%>
  			</tbody>
  		</table>
	</div>
	
	
</body>
</html>