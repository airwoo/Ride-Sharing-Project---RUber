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
  <li><a href="Rate.jsp">Rate Ride</a></li>
  <li><a class="active" href="Rewards.jsp">Rewards</a></li>
  <li><a href="Logout.jsp">Logout</a></li>
</ul>

<br>

<title>Reward Page</title>
</head>
<body>
<h1><center>Reward Page</center></h1>

<br>
<br>
Number of Rides Given:

<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister";
String username="Guest";
String password="guest";
String date = "SELECT CURDATE()";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
ResultSet d = stmt.executeQuery(date);
d.next();
date = d.getString(1);
String uname = session.getAttribute("username").toString();
String query = "SELECT SUM(s.rides) FROM Stats s, Users u WHERE u.username = '" + uname + "' AND u.username = s.username AND s.cal = '" + date + "'";
ResultSet rs=stmt.executeQuery(query);
rs.next();

int count = rs.getInt(1);
out.print(count);
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
<br>
<br>
Average Rating:
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister";
String username="Guest";
String password="guest";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
String uname = session.getAttribute("username").toString();
String query = "SELECT AVG(s.rating) FROM Stats s, Users u WHERE u.username = '" + uname + "' AND u.username = s.username";
ResultSet rs=stmt.executeQuery(query);
rs.next();

int count = rs.getInt(1);
out.print(count);
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
<br>
<br>
Leaderboard Rank:

<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister";
String username="Guest";
String password="guest";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
String uname = session.getAttribute("username").toString();
String query = "SELECT count(*) +1 as rank FROM (SELECT username, SUM(rides) as ridees FROM Stats Group By username Order By rides Desc) as ranking, (SELECT username, SUM(rides) as ridees FROM Stats Group By username Order By rides Desc) ranking2 WHERE ranking.username = '" + uname + "' AND ranking.ridees < ranking2.ridees";
ResultSet rs=stmt.executeQuery(query);
rs.next();

int count = rs.getInt(1);
out.print(count);
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
<br>
<br>
Revenue to receive:
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister";
String username="Guest";
String password="guest";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
String uname = session.getAttribute("username").toString();
String query = "SELECT SUM(rides) as rides FROM Stats WHERE username = '" + uname + "'";
String query2 = "SELECT payoutperhit as value FROM RegisteredAd r, AdvertisingStats a WHERE r.username = '" + uname + "' AND r.adId = a.adId";

ResultSet rs=stmt.executeQuery(query);


rs.next();

int rides = rs.getInt("rides");

ResultSet rs2=stmt.executeQuery(query2);
rs2.next();
int payment = rs2.getInt("value");

out.print(rides*payment);

rs.close();
rs2.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>		  

</body>
</html>