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
			Statement stmt2 = conn.createStatement();
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			//error: password/username too short/long
			if(username.length() < 6 || username.length() > 15 || password.length() < 6 || password.length() > 15){
				out.print("Sorry, that username or password cannot exist!");
				conn.close();
				return;
			}
			
			//Parse out the information from the newBeer.jsp
			String query = "SELECT COUNT(*) as cnt FROM Users WHERE username = '" + username + "' AND password = '" + password + "'";

			ResultSet result = stmt.executeQuery(query);
			result.next();

			String queryLock = "SELECT COUNT(*) as cntLock FROM Lockout WHERE username = '" + username + "'";

			ResultSet resultLock = stmt2.executeQuery(queryLock);
			resultLock.next();
			
			int count = result.getInt("cnt");
			int countLock = resultLock.getInt("cntLock");

			if (count == 0) {
				out.print("Invalid login. Please try again, or register a new account.");
			}
			else if (countLock == 1) {
				out.print("This account is locked");
			}
			else{
				session.setAttribute("username", username);
				response.sendRedirect("HomePage.jsp");
			}
			//close the connection
			conn.close();

		} catch (Exception ex) {
			
			System.out.println("Error");
		}
	%>
</body>
</html>