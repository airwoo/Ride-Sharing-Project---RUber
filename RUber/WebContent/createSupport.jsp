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
String password =request.getParameter("password");



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister", "Guest", "guest");

String str = "INSERT INTO theSupport VALUES(?,?)";


PreparedStatement st=conn.prepareStatement(str);
st.setString(1,username);
st.setString(2,password);
st.executeUpdate();
out.print("You have created a system support staff member!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<form action="Admin.jsp">
	<input type ="submit" value="Back to Previous Page">
	</form>
</body>
</html>