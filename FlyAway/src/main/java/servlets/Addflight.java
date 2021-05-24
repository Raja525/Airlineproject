package servlets;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Addflight extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)
	{
		String flightid=req.getParameter("flightid");
		String name=req.getParameter("name");
		String source=req.getParameter("source");
		String destination=req.getParameter("destination");
		String day=req.getParameter("day");
		String ticketprice=req.getParameter("ticketprice");
		try {
		Class.forName("com.mysql.jdbc.Driver");
//AWS rds DB connection
		Connection con=DriverManager.getConnection("jdbc:mysql://aa1y1ghile0p7t1.cv2uqxokjyuy.us-east-1.rds.amazonaws.com:3306/phase2DB","root","rootraja");
// LocalDB using Hibernate
		//	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/sys","root","rootraja");
		PreparedStatement ps;
		
			ps = con.prepareStatement("insert into flights(FlightId,Name,Source,Destination,Day,TicketPrice)values(?,?,?,?,?,?)");
			ps.setString(1, flightid);
			ps.setString(2, name);
			ps.setString(3, source);
			ps.setString(4, destination);
			ps.setString(5, day);
			ps.setString(6, ticketprice);
			ps.executeUpdate();
			
			res.sendRedirect("Admin.jsp");
		
		} catch (SQLException | ClassNotFoundException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
