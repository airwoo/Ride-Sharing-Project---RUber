<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message Page</title>
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
  <li><a class="active" href="Messages.jsp">Messages</a></li>
  <li><a href="Offer.jsp">Offer Ride</a></li>
  <li><a href="Request.jsp">Request Ride</a></li>
  <li><a href="Rate.jsp">Rate Ride</a></li>
  <li><a href="Rewards.jsp">Rewards</a></li>
  <li><a href="Logout.jsp">Logout</a></li>
</ul>

<br>
<h1><center>Message Page</center></h1>


									  
<br>
	<form method="post" action="Messages1.jsp">
	<table>
	<tr>    
	<td>To</td><td><input type="text" name="tto"></td>
	</tr>
	<tr>    
	<td>From</td><td><input type="text" name="ffrom"></td>
	</tr>
	<tr>    
	<td>Message:</td><td><textarea rows="4" cols="50" name="mmessage"></textarea></td>
	</tr>
	<tr>    
	
	</table>
	<br>
	
		<input type ="submit" value="Submit"/></form>
	

<br>
<h1><center>Message History</center></h1>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister";

String username = request.getParameter("username");  
String profile = request.getParameter("username");
session.getAttribute("username");


String query = "select * from Messages where tto = '" + session.getAttribute("username") + "'";
Connection conn=DriverManager.getConnection(url, "Guest", "guest");
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
               <TH>To</TH>
               <TH>From</TH>
               <TH>Message</TH>
               
           </TR>
           <TR>
               <td><%=rs.getString("tto") %></td>
			   <td><%=rs.getString("ffrom") %></td>
               <td><%=rs.getString("mmessage") %></td>
               
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
<form method="post" action="deleteMessage.jsp">
<input type ="submit" value="Delete"/>   Delete your message history!
</form>
</body>
</html>