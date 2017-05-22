<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Support Page</title>
<style>
body {
    
    background-image: url("https://i.stack.imgur.com/qugQX.png");
    font-family: "Calibri";
    color: white;
}
</style>
</head>
<body>
<ul><h1><center>Support Staff Page</center></h1></ul>

<ul><h3><center>Change User Password</center></h3></ul>
<center>									  
<br>
	<form method="post" action="passReset.jsp">
	<table>
	<tr>    
	<td>Username</td><td><input type="text" name="username"></td>
	</tr>
	<tr>    
	<td>New Password</td><td><input type="text" name="newpass"></td>
	</tr>
	</table>
	<input type ="submit" value="Submit Password Reset"/>
	</form><br>
	<ul><h3><center>Lockout User</center></h3></ul>
	<br>
	<form method="post" action="Lockout.jsp">
	<table>
	<tr>    
	<td>Username</td><td><input type="text" name="username"></td>
	</tr>
	</table>
	<input type ="submit" value="Submit Lockout">
	</form>
	<br>
	<ul><h3><center>Change Advertisements</center></h3></ul>
	<br>
	<form method="post" action="Advertising.jsp">
	<input type ="submit" value="Manage Ads">
	</form>
<br>
<form action="Login.jsp">
	<input type ="submit" value="Back to Login Page">
	</form>
</center>
</body>
</html>