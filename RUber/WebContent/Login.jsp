<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<style>
body {
    
    background-image: url("https://i.stack.imgur.com/qugQX.png");
    font-family: "Calibri";
    color: white;
}
</style>
</head>
<body>
<ul><h1><center>Login Page</center></h1></ul>
<ul><h2><center>Users</center></h2></ul>

									  
<br><center>
	<form method="post" action="Login1.jsp">
	<table>
	<tr>    
	<td>Username</td><td><input type="text" name="username"></td>
	</tr>
	<tr>
	<td>Password</td><td><input type="password" name="password"></td>
	</tr>
	</table>
	<br>
	<input type="submit" value="Login">
	</form>
	<form action="Register.jsp">
	<input type ="submit" value="Register">
	</form>
	</center>



<br>
<ul><h2><center>Admins</center></h2></ul>
<center>
	<form method="post" action="Login2.jsp">
	<table>
	<tr>    
	<td>Username</td><td><input type="text" name="username"></td>
	</tr>
	<tr>
	<td>Password</td><td><input type="password" name="password"></td>
	</tr>
	</table>
	<br>
	<input type="submit" value="Login">
	</form>
	
<br>
<ul><h2><center>Support Staff</center></h2></ul>
<center>
	<form method="post" action="Login3.jsp">
	<table>
	<tr>    
	<td>Username</td><td><input type="text" name="username"></td>
	</tr>
	<tr>
	<td>Password</td><td><input type="password" name="password"></td>
	</tr>
	</table>
	<br>
	<input type="submit" value="Login">
	</form>
</body>
</html>