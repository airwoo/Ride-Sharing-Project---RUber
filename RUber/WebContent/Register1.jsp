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
			Connection con = DriverManager.getConnection(url, "Guest", "guest");

			//Create a SQL statement
			Statement stmt = con.createStatement();

			String username = request.getParameter("username");
			String first = request.getParameter("first");
			String last = request.getParameter("last");
			String ruemail = request.getParameter("ruemail");
			String password = request.getParameter("password");
			String confirm = request.getParameter("confirm");
			String own = request.getParameter("own");
			String make = request.getParameter("make");
			String seats = request.getParameter("seats");
			
		
			
			
			
			//error: password/username too short/long
			if(username.length() < 6 || username.length() > 15 || password.length() < 6 || password.length() > 15){
				out.print("Sorry, please make sure usernames and passwords are between 6 to 15 characters!");
				con.close();
				return;
			}
			if(!password.equals(confirm)){
				out.print("Passwords do not match!");
				con.close();
				return;
			}
			
			//Parse out the information
			String query = "SELECT COUNT(*) as cnt FROM Users WHERE username = '" + username + "' AND first = '" + first + "' AND last = '" + last + "' AND ruemail = '" + ruemail + "' AND password = '" + password + "' AND confirm = '" + confirm + "'";

			ResultSet result = stmt.executeQuery(query);
			result.next();

			int count = result.getInt("cnt");

			if (count == 0) {
				stmt.executeUpdate("INSERT INTO Users (username, first, last, ruemail, password, confirm) VALUES ('"+ username +"', '" + first +"', '" + last +"', '" + ruemail +"', '" + password +"', '" + confirm +"')");
				stmt.executeUpdate("INSERT INTO Stats (username, rides,rating) VALUES ('"+ username +"', 0, 5)");
				stmt.executeUpdate("INSERT INTO RegisteredAd (username, adId) VALUES ('"+ username +"', 1)");
				out.print("Welcome to RUber!");
				
			}
			else{
				out.print("Sorry, that user already exists. Try adding numbers or characters to your username!");
			}
			//close the connection
			con.close();

			//error: user already exists

		} catch (Exception ex) {
			
			System.out.println("Error");
		}
	%>
	<form action="Login.jsp">
	<input type ="submit" value="Back to Login">
	</form>
</body>
</html>