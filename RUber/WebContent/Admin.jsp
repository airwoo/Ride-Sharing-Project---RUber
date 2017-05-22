<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
body {
    
    background-image: url("https://i.stack.imgur.com/qugQX.png");
    font-family: "Calibri";
    color: white;
}
</style>
</head>
<body>



<title>Admin</title>
</head>
<body>
<h1><center>Admin Page</center></h1>


<h3><center>Create System Support Staff</center></h3>

<center>							  
<br>
	<form method="post" action="createSupport.jsp">
	<table>
	<tr>    
	<td>Username</td><td><input type="text" name="username"></td>
	</tr>
	<tr>    
	<td>Password</td><td><input type="text" name="password"></td>
	</tr>
	  
	
	</table>
	<br>
	
		<input type ="submit" value="Create"/></form>
	</center>	

<br>



<center>



















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

String query = "SELECT SUM(s.rides) FROM Stats s WHERE s.cal = '" + date + "'";
ResultSet rs=stmt.executeQuery(query);
rs.next();

int count = rs.getInt(1);
out.println("Number of Rides Given Today " + count + " ");

query = "SELECT SUM(s.rides) FROM Stats s WHERE s.cal between DATE_SUB('" + date + "', INTERVAL 7 DAY) AND '" + date + "'";
rs=stmt.executeQuery(query);
rs.next();

count = rs.getInt(1);
out.println("Number of Rides Given Weekly " + count + " ");

query = "SELECT SUM(s.rides) FROM Stats s WHERE s.cal between DATE_SUB('" + date + "', INTERVAL 30 DAY) AND '" + date + "'";
rs=stmt.executeQuery(query);
rs.next();

count = rs.getInt(1);
out.println("Number of Rides Given Monthly " + count + " ");

query = "SELECT SUM(s.rides) FROM Stats s WHERE s.cal between DATE_SUB('" + date + "', INTERVAL 180 DAY) AND '" + date + "'";
rs=stmt.executeQuery(query);
rs.next();

count = rs.getInt(1);
out.println("Number of Rides Given Semesterly " + count + " ");

query = "SELECT SUM(s.rides) FROM Stats s WHERE s.cal between DATE_SUB('" + date + "', INTERVAL 364 DAY) AND '" + date + "'";
rs=stmt.executeQuery(query);
rs.next();

count = rs.getInt(1);
out.println("Number of Rides Given Yearly " + count + " ");

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
	<form >
	<table>
	<tr>    
	<td>Username</td><td><input type="text" name="username"></td>
	</tr>
	</table>
	<br>
		<input type ="submit" value="Submit"/></form>
	</form>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister";
String username="Guest";
String password="guest";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
String user = request.getParameter("username");
String query = "SELECT username, SUM(rides) as ridees FROM Stats WHERE username = '" + user + "'";
ResultSet rs=stmt.executeQuery(query);
rs.next();
%>
<h3><center>By User</center></h3>
<table border="1">
<tr>

</tr>
</table>
 <TABLE BORDER="1">
            <TR>
               <TH>Username</TH>
               <TH>Rides</TH>
           </TR>
           <TR>
               <td><%=rs.getString("username") %></td>
			   <td><%=rs.getInt("ridees") %></td>
           </TR>
       </TABLE>
</table>
</tr>
<%
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</form>
<br>

<h3><center>By Origin</center></h3>


									  
<br>
	<form >
	<table>
	<tr>    
	<td>Origin</td><td><input type="text" name="origin"></td>
	</tr>	
	</table>
	<br>
	
		<input type ="submit" value="Submit"/></form>
	</form>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister";
String username="Guest";
String password="guest";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
String origin = request.getParameter("origin");
String query = "SELECT origin, SUM(dailyuse) as rides FROM LocationStats WHERE origin = '" + origin + "'";

ResultSet rs=stmt.executeQuery(query);

rs.next();
%>

<table border="1">
<tr>

</tr>
</table>
 <TABLE BORDER="1">
            <TR>
               <TH>Origin</TH>
               <TH>Rides</TH>
           </TR>
           <TR>
               <td><%=rs.getString("origin") %></td>
			   <td><%=rs.getInt("rides") %></td>
           </TR>
       </TABLE>
 <%
%>
</table>
<%
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</form>
<br>

<h3><center>By Destination</center></h3>


									  
<br>
	<form >
	<table>
	<tr>    
	<td>Destination</td><td><input type="text" name="destination"></td>
	</tr>	
	</table>
	<br>
	
		<input type ="submit" value="Submit"/></form>
	</form>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister";
String username="Guest";
String password="guest";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
String destination = request.getParameter("destination");
String query = "SELECT destination, SUM(dailyuse) as rides FROM LocationStats WHERE destination = '" + destination + "'";

ResultSet rs=stmt.executeQuery(query);

rs.next();
%>

<table border="1">
<tr>

</tr>
</table>
 <TABLE BORDER="1">
            <TR>
               <TH>Destination</TH>
               <TH>Rides</TH>
           </TR>
           <TR>
               <td><%=rs.getString("destination") %></td>
			   <td><%=rs.getInt("rides") %></td>
           </TR>
       </TABLE>
 <%
%>
</table>
<%
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</form>
<br>
<form action="Login.jsp">
	<input type ="submit" value="Back to Login Page">
	</form>
</body>
</html>