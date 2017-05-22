<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Advertisement Page</title>
<style>
body {
    
    background-image: url("https://i.stack.imgur.com/qugQX.png");
    font-family: "Calibri";
    color: white;
}
</style>
</head>
<body>
<ul><h1><center>Advertisement Page</center></h1></ul>

<center>
<h3>Create New Advertisement		</h3>							  
<br>
	<form method="post" action="createAd.jsp">
	<table>
	<tr>    
	<td>Advertisement Number</td><td><input type="text" name="adId"></td>
	</tr>
	<tr>    
	<td>Advertisement Name</td><td><input type="text" name="adName"></td>
	</tr>
	<tr>    
	<td>Advertisement Value per Hit</td><td><input type="text" name="value"></td>
	</tr>
	</table>
	<input type ="submit" value="Submit New Advertisement"/>
	</form>
	<br>
<h3>	Edit Advertisement</h3>
	<br>
	<form method="post" action="editAd.jsp">
	<table>
	<tr>    
	<td>Advertisement Number</td><td><input type="text" name="adId"></td>
	</tr>
	<tr>    
	<td>Advertisement Name</td><td><input type="text" name="adName"></td>
	</tr>
	<tr>    
	<td>Advertisement Value per Hit</td><td><input type="text" name="value"></td>
	</tr>
	</table>
	<input type ="submit" value="Edit Advertisement"/>
	</form>
	<br><br>
<h3>Find Ad Info</h3>
	<form method="post" action="adInfo.jsp">
	<table>
	<tr>    
	<td>Advertisement Number</td><td><input type="text" name="adId"></td>
	</tr>
	</table>
	<input type ="submit" value="Request Advertisement Info">
	</form>
	<br>
	
	<form action="Support.jsp">
	<input type ="submit" value="Back to Previous Page">
	</form>
</center>	
<br>
</body>
</html>