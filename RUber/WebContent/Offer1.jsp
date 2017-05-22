<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Offer1</title>
</head>
<body>
<%
String username=request.getParameter("username");
String first =request.getParameter("first");
String tStart =request.getParameter("tStart");
String tEnd =request.getParameter("tEnd");
String departure =request.getParameter("departure");
String destination =request.getParameter("destination");
String car =request.getParameter("car");
String seats =request.getParameter("seats");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister", "Guest", "guest");

String str = "INSERT INTO Offer VALUES(?,?,?,?,?,?,?,?)";


PreparedStatement st=conn.prepareStatement(str);
st.setString(1,(String)session.getAttribute("username"));
st.setString(2,first);
st.setString(3,tStart);
st.setString(4,tEnd);
st.setString(5,departure);
st.setString(6,destination);
st.setString(7,car);
st.setString(8,seats);
st.executeUpdate();
out.print("You have placed your offer in the queue!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<form action="Offer.jsp">
	<input type ="submit" value="Back to Previous Page">
	</form>
</body>
</html>