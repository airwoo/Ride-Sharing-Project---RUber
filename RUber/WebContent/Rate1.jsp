<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rate1</title>
</head>
<body>
<%
String usernameVar = session.getAttribute("username").toString();
String to=request.getParameter("rratee");
String rating =request.getParameter("rrating");


try
{
if(Integer.parseInt(rating) >= 5){
	rating = "5";
}
	
if(Integer.parseInt(rating) <= 0){
	rating = "0";
}
	
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister", "Guest", "guest");

Statement stmt = conn.createStatement();

String str2 = "SELECT COUNT(*) as cnt FROM AcceptedOffers Where offerer = '" + to + "'";

ResultSet result = stmt.executeQuery(str2);
result.next();

int count = result.getInt("cnt");

if(count <= 0){
	out.print("You have not gone on a ride with this person.");
} else {

String str = "INSERT INTO Rating VALUES(?,?,?)";


PreparedStatement st=conn.prepareStatement(str);
st.setString(1,usernameVar);
st.setString(2,to);
st.setString(3,rating);
st.executeUpdate();
out.print("Rating issued");
}

}
catch(Exception e)
{
System.out.print("You have rated this person already.");

}
%>
<form action="Rate.jsp">
<br>
	<input type ="submit" value="Back to Previous Page">
	</form>
</body>
</html>