<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rating Page</title>
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #123;
}

.active {
background-color:red
}

.mySlides{
	width:500px;
	height:350px;
}
#history{
	table-layout:fixed;
	width:100%;
	
}
body {
    
   
    font-family: "Calibri";
    
}


</style>
</head>
<body>
<ul>
  <li><a href="HomePage.jsp">Home</a></li>
  <li><a href="Profile.jsp">Profile</a></li>
  <li><a href="Search.jsp">Search</a></li>
  <li><a href="Messages.jsp">Messages</a></li>
  <li><a href="Offer.jsp">Offer Ride</a></li>
  <li><a href="Request.jsp">Request Ride</a></li>
  <li><a class="active" href="Rate.jsp">Rate Ride</a></li>
  <li><a href="Rewards.jsp">Rewards</a></li>
  <li><a href="Logout.jsp">Logout</a></li>
</ul>

<br>
<h1><center>Rating Page</center></h1>

<center>							  
<br>
	<form method="post" action="Rate1.jsp">
	<table>
	<tr>    
	<td>To</td><td><input type="text" name="rratee"></td>
	</tr> 	
	<tr>    
	<td>Rating (1-5)</td><td><input type="text" name="rrating"></td>
	</tr> 
	</table>
	<br>
	
		<input type ="submit" value="Submit"/></form>
	
</center>
<br>

</form>
<br>

	
</center>
<br>

</form>
</body>
</html>