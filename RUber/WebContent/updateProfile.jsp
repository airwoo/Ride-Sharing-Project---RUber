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
String username = request.getParameter("username");
String first = request.getParameter("first");
String last = request.getParameter("last");
String ruemail = request.getParameter("ruemail");
String password = request.getParameter("password");
String confirm = request.getParameter("confirm");
String own = request.getParameter("own");
String make1 = request.getParameter("make1");
String seats1 = request.getParameter("seats1");
String make2 = request.getParameter("make2");
String seats2 = request.getParameter("seats2");
String make3 = request.getParameter("make3");
String seats3 = request.getParameter("seats3");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister", "Guest", "guest");

String str = "Update Users Set username=?, first=?, last=?, ruemail=?, own=?, make1=?, seats1=?, make2=?, seats2=?, make3=?, seats3=? WHERE username = '" + session.getAttribute("username") + "'"; 


PreparedStatement st=conn.prepareStatement(str);
st.setString(1,(String)session.getAttribute("username"));
st.setString(2,first);
st.setString(3,last);
st.setString(4,ruemail);
st.setString(5,own);
st.setString(6,make1);
st.setString(7,seats1);
st.setString(8,make2);
st.setString(9,seats2);
st.setString(10,make3);
st.setString(11,seats3);
st.executeUpdate();
out.print("You have edited your information!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<form action="Profile.jsp">
	<input type ="submit" value="Back to Previous Page">
	</form>
</body>
</html>