<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		try {

			//Create a connection string
			String url = "jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister";
			//Load JDBC driver - the interface standardizing the connection procedure. Look at WEB-INF\lib for a mysql connector jar file, otherwise it fails.
			Class.forName("com.mysql.jdbc.Driver");

			//Create a connection to your DB
			Connection conn = DriverManager.getConnection(url, "Guest", "guest");

			//Create a SQL statement
			Statement stmt = conn.createStatement();

			String adId = request.getParameter("adId");
			String adName = request.getParameter("adName");
			String value = request.getParameter("value");

			//Parse out the information from the newBeer.jsp
			String query = "SELECT COUNT(*) as cnt FROM AdvertisingStats WHERE adId = " + adId + "";

			ResultSet result = stmt.executeQuery(query);
			result.next();

			int count = result.getInt("cnt");

			if (count == 0) {
				out.print("Sorry, that advertisement does not exist.");
			}
			else{
				if(!adName.isEmpty() && value.isEmpty()){
					query = "UPDATE AdvertisingStats SET adName = '" + adName + "' WHERE adId = " + adId;
					stmt.executeUpdate(query);
					out.print("You have successfully edited an advertisement!");
				}
				else if(adName.isEmpty() && !value.isEmpty()){
					query = "UPDATE AdvertisingStats SET payoutperhit = " + value + " WHERE adId = " + adId;
					stmt.executeUpdate(query);
					out.print("You have successfully edited an advertisement!");
				}
				else if(!adName.isEmpty() && !value.isEmpty()){
					query = "UPDATE AdvertisingStats SET adName = '" + adName + "', payoutperhit = " + value + " WHERE adId = " + adId;
					stmt.executeUpdate(query);
					out.print("You have successfully edited an advertisement!");
				}
			}
			//close the connection
			conn.close();

		} catch (Exception ex) {
			
			System.out.println("Error");
		}
	%>
	<form action="Advertising.jsp">
	<input type ="submit" value="Back to Previous Page">
	</form>
</body>
</html>