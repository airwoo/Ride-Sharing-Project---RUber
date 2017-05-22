<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Page</title>
<style>
body {
    
    background-image: url("https://i.stack.imgur.com/qugQX.png");
    font-family: "Calibri";
    color: white;
}
</style>
</head>
<body>
<ul><h1><center>Registration</center></h1></ul>


<center>							  
<br>
<br>
<br>
<br>
<br>
<br>
<br>
	<form method="post" action="Register1.jsp">
	<table>
	<tr>    
	<td>Username</td><td><input type="text" name="username"></td>
	</tr>
	<tr>    
	<td>First Name</td><td><input type="text" name="first"></td>
	</tr>
	<tr>    
	<td>Last Name</td><td><input type="text" name="last"></td>
	</tr>
	<tr>    
	<td>RUEmail</td><td><input type="text" name="ruemail"></td>
	</tr>
	<tr>
	<td>Password</td><td><input type="password" name="password"></td>
	</tr>
	<tr>    
	<td>Confirm Pw</td><td><input type="password" name="confirm"></td>
	</tr>
	
	</table>
	<br>
	<form action="Login.jsp">
		<input type ="submit" value="Submit"/></form>
	</form>
	<form action="Login.jsp">
	<input type ="submit" value="Back to Login">
	</form>
<br>
</center>
</body>
</html>