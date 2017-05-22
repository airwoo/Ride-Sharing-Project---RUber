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
  <li><a class="active" href="Request.jsp">Request Ride</a></li>
  <li><a href="Rate.jsp">Rate Ride</a></li>
  <li><a href="Rewards.jsp">Rewards</a></li>
  <li><a href="Logout.jsp">Logout</a></li>
</ul>

<br>

<h1><center>Request Page</center></h1>


									  
<br>
	<form method="post" action="Request1.jsp">
	<table>
	<tr>    
	<td>Username</td><td><%=session.getAttribute("username")%></td>
	</tr>
	<tr>    
	<td>First Name</td><td><input type="text" name="first"></td>
	</tr>
	<tr>    
	<td>Departure Start Time</td><td><input type="text" name="tStart"></td>
	</tr>
	<tr>    
	<td>Departure End Time</td><td><input type="text" name="tEnd"></td>
	</tr>
	<tr>
	<td>Departure Location</td><td><input type="text" name="departure"></td>
	</tr>
	<tr>
	<td>Destination Location</td><td><input type="text" name="destination"></td>
	</tr>
	<tr>    
	<td>Group Size</td><td><input type="text" name="passengers"></td>
	</tr>
	
	</table>
	<br>
	
		<input type ="submit" value="Submit"/></form>
	</form>
	
<br>
<h2><center>Choose a Drive Offer</center></h2>
	<form method="post" action="Request2.jsp">
	<tr>    
	<td>Enter Offerer Username</td><td><input type="text" name="driverUser"></td>
	</tr>
	<input type ="submit" value="Accept"/></form>
	</form>
<h2><center>Information on Drivers Offering Rides</center></h2>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister";
String username="Guest";
String password="guest";
String query = "SELECT * FROM Offer";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>

<table border="1">
<tr>

</tr>
</table>
 <TABLE BORDER="1" id="history">
            <TR>
               <TH>Username</TH>
               <TH>First Name</TH>
               <TH>Departure Time Start</TH>
               <TH>Departure Time End</TH>
               <TH>Departure Location</TH>
               <TH>Destination Location</TH>
               <TH>Car</TH>
               <TH>Seats</TH>
           </TR>
           <TR>
               <td><%=rs.getString("username") %></td>
			   <td><%=rs.getString("first") %></td>
               <td><%=rs.getString("tStart") %></td>
               <td><%=rs.getString("tEnd") %></td>
               <td><%=rs.getString("departure") %></td>
               <td><%=rs.getString("destination") %></td>
               <td><%=rs.getString("car") %></td>
               <td><%=rs.getString("seats") %></td>
           </TR>
       </TABLE>
 <%

}
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

<form method="post" action="deleteOffer.jsp">
<input type ="submit" value="Delete"/>   Delete yourself from the offer queue!
</form>

</body>
</HTML>