<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

#banner{
	position: absolute;
	top: 500px;
	left: 0px;
	right: 0px;
	width: 100%;
	height: 200px;
	z-index:-1;
}

body {
     font-family: "Calibri";
}
</style>
</head>
<body>
<%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
You are not logged in<br/>
<a href="Login.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("username")%>
<%
    }
%>
<ul>
  <li><a class="active" href="HomePage.jsp">Home</a></li>
  <li><a href="Profile.jsp">Profile</a></li>
  <li><a href="Search.jsp">Search</a></li>
  <li><a href="Messages.jsp">Messages</a></li>
  <li><a href="Offer.jsp">Offer Ride</a></li>
  <li><a href="Request.jsp">Request Ride</a></li>
  <li><a href="Rate.jsp">Rate Ride</a></li>
  <li><a href="Rewards.jsp">Rewards</a></li>
  <li><a href="Logout.jsp">Logout</a></li>
</ul>

<br>
<center>
<div class="w3-content w3-section" style="max-width:500px">
  <img class="mySlides" src="https://whoopdirt.com/wp-content/uploads/2015/05/Rutgers_Scarlet_Knights.jpg">
  <img class="mySlides" src="http://media2.govtech.com/images/940*626/shutterstock_Uber+phone+screen.jpg">
  <img class="mySlides" src="https://i.ytimg.com/vi/Ics-0XlTjQo/maxresdefault.jpg">
  <img class="mySlides" src="https://www.gannett-cdn.com/-mm-/a61e8de379e45d0ff88a59267b742e31f8631212/c=9-0-3992-2250&r=x1683&c=3200x1680/local/-/media/2015/10/28/NJGroup/Bridgewater/635816310712873009-TheYardRendering.jpg.jpeg">
  <img class="mySlides" src="https://thetab.com/blogs.dir/110/files/2017/01/starbucks-the-yard-1024x766.jpg">
</div>
</center>
<img id="banner" src="http://www.myfavoritesin.com/uber/images/uber-my-favorite-sin-partnership-sinner.jpg"/>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 3000); // Change image every 3 seconds
}
</script>

</body>
</html>