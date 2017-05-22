<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Request2</title>
</head>
<body>
<%
String offerer=request.getParameter("driverUser");
//try
//{
	
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister", "Guest", "guest");

Statement statement = conn.createStatement();

ResultSet resultset = statement.executeQuery("Select * From Offer Where username = '" + offerer + "'");

if(!resultset.next()) {
    out.println("Sorry, could not find that user's drive offer. " +
    "Please try again.");
} else {
	String first =  resultset.getString(2);
	String tStart = resultset.getString(3);
	String tEnd = resultset.getString(4);
	String departure = resultset.getString(5);
	String destination = resultset.getString(6);
	String car = resultset.getString(7);
	int seats = Integer.parseInt(resultset.getString(8));
	
	Statement statement2 = conn.createStatement();
	String str = "INSERT INTO AcceptedOffers VALUES('" + offerer + "','" + session.getAttribute("username") + "','" + tStart + "','" + first + "','" + tEnd + "','" + departure + "','" + destination + "','" + car + "')";
	statement2.executeUpdate(str);
	
	Statement statement3 = conn.createStatement();
	String str2 = "";
	
	if(seats == 1){
		str2 = "Delete From Offer Where username = '" + offerer + "'";
	} else {
		str2 = "Update Offer Set seats = '" + Integer.toString(seats - 1) + "' Where username = '" + offerer + "'";
	}
	
	statement3.executeUpdate(str2);
}

//}catch(Exception e) {
//System.out.print("Invalid Username");

//}
%>
<form action="Request.jsp">
<br>
	<input type ="submit" value="Back to Previous Page">
	</form>
</body>
</html>