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
  <li><a class="active" href="Search.jsp">Search</a></li>
  <li><a href="Messages.jsp">Messages</a></li>
  <li><a href="Offer.jsp">Offer Ride</a></li>
  <li><a href="Request.jsp">Request Ride</a></li>
  <li><a href="Rate.jsp">Rate Ride</a></li>
  <li><a href="Rewards.jsp">Rewards</a></li>
  <li><a href="Logout.jsp">Logout</a></li>
</ul>

<br>

<H1>Search Username</H1>
        <FORM ACTION="Search.jsp" METHOD="POST">
            Username:
            <BR>
            <INPUT TYPE="TEXT" NAME="username">
            <BR>
            <INPUT TYPE="SUBMIT" value="Submit">
        </FORM>


        <H1>Searched User Information</H1>

        <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister", "Guest", "guest");

            Statement statement = connection.createStatement();

            String username = request.getParameter("username");  

            ResultSet resultset = 
                statement.executeQuery("Select Users.username, Users.first, Users.last, Users.ruemail, Users.own, Users.make1, Users.seats1, Users.make2, Users.seats2, Users.make3, Users.seats3, avgRating.avgrating from Users Left Join (Select Rating.ratee, AVG(rating) As avgrating From Rating Group By Rating.ratee) AS avgRating On Users.username = avgRating.ratee WHERE username = '" + username + "'") ; 

            if(!resultset.next()) {
                out.println("Sorry, could not find that user. " +
                "Please try again.");
            } else {
        %>

        <TABLE BORDER="1">
            <TR>
               <TH>Username</TH>
               <TH>First Name</TH>
               <TH>Last Name</TH>
               <TH>RUEmail</TH>
               <TH>Cars Owned</TH>
               <TH>Make</TH>
               <TH>Seats</TH>
               <TH>Make</TH>
               <TH>Seats</TH>
               <TH>Make</TH>
               <TH>Seats</TH>
               <TH>Rating</TH>
               
           </TR>
           <TR>
              <TD> <%= resultset.getString(1) %> </TD>
               <TD> <%= resultset.getString(2) %> </TD>
               <TD> <%= resultset.getString(3) %> </TD>
               <TD> <%= resultset.getString(4) %> </TD>
               <TD> <%= resultset.getString(5) %> </TD>
               <TD> <%= resultset.getString(6) %> </TD>
               <TD> <%= resultset.getString(7) %> </TD>
               <TD> <%= resultset.getString(8) %> </TD>
               <TD> <%= resultset.getString(9) %> </TD>
               <TD> <%= resultset.getString(10) %> </TD>
               <TD> <%= resultset.getString(11) %> </TD>
               <TD> <%= resultset.getString(12) %> </TD>
               
           </TR>
       </TABLE>
       <BR>
       <% 
           } 
       %>
    </BODY>
</HTML>