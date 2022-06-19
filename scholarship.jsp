<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.Connection" %>
   <%@page import="java.sql.Statement" %>
   <%@page import="java.sql.ResultSet" %>
   <%@page import="java.sql.Driver" %>
   <%@page import="java.sql.DriverManager" %>
   <%@page import="java.sql.SQLException" %>
   <%@page import="javax.sql.*" %>
   <%@page import="java.util.*" %>
   <%@page import="java.lang.Class" %>
   <%@page import="java.lang.*" %>
   <%@page import="java.sql.Statement" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verifying Details</title>
</head>
<body>
<%
String u_name = session.getAttribute("sco1").toString();
String count1=request.getParameter("count");
try{
Class.forName("com.mysql.cj.jdbc.Driver");
//Establish connection to databse server
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1","root","kosigi2568");
Statement stmt=con.createStatement();
stmt=con.createStatement();
ResultSet rs;
rs=stmt.executeQuery("select tod from typeofdisability_details where udid='"+u_name+"'");
String accn="";
while(rs.next()){
accn=rs.getString("tod");
}
int count=0,tod;
count=Integer.valueOf(count1); 
tod=Integer.valueOf(accn);
if(count<9)
{
	if(tod<40)
	{
		out.print("You're elgible for scholarship for tod:"+tod);
		out.print("<br>Click here to know about Vacancies"+"<a href='Study.jsp'>Scholarship Description</a>");
	}
}
else
	out.print("You're not elgible for scholarship");
con.close();
}
catch(SQLException e){
	out.println(e);
}
catch(Exception e){
	out.println(e);
}
%>
</body>
</html>