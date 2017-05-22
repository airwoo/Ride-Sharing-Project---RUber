<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com:3306/UberRegister";
String username="Guest";
String password="guest";
String adId = request.getParameter("adId");
String query = "SELECT * FROM AdvertisingStats WHERE adId = " + adId;
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
rs.next();
%>

<table border="1">
<tr>

</tr>
</table>
 <TABLE BORDER="1">
            <TR>
               <TH>Ad ID</TH>
               <TH>Ad Name</TH>
               <TH>Hits</TH>
               <TH>Value Per Hit</TH>
           </TR>
           <TR>
               <td><%=rs.getInt("adId") %></td>
			   <td><%=rs.getString("adName") %></td>
               <td><%=rs.getInt("totalHits") %></td>
               <td><%=rs.getInt("payoutperhit") %></td>
           </TR>
       </TABLE>
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
<form action="Advertising.jsp">
	<input type ="submit" value="Back to Previous Page">
	</form>
</body>
</html>