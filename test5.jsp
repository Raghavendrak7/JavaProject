</head><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
   <%@page import="java.sql.Statement" %>
   <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css?<?php echo time(); ?>" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Home Page</title>
</head>
<body>
<form method="get" action="test6.jsp">
<% 
String tod1=null,schme=null;
int sco,tod2;
tod1=request.getParameter("tod");
try{
Class.forName("com.mysql.cj.jdbc.Driver");
//Establish connection to databse server
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1","root","kosigi2568");
Statement stmt=con.createStatement();
stmt=con.createStatement();
ResultSet rs;
int tod=Integer.parseInt(tod1);
if(tod!=0)
{
	rs=stmt.executeQuery("select * from display_schemes where tod='"+tod+"'");
	while(rs.next())
	{
		sco=rs.getInt("sco");
		tod2=rs.getInt("tod");
		schme=rs.getString("schme");
		%>
		<table>
		<tr>
		<td>Scheme No</td>
		<td><%=sco%></td>
		</tr>
		<tr>
		<td>Type of Disabilty</td>
		<td><%=tod%></td>
		</tr>
		<tr>
		<td>Scheme Description</td>
		<td><%=schme%></td>
		</tr>
		</table>
		<%
	}
}
else
	out.println("Invalid detials Please try again!"+"<a href='Delete_Schemes.jsp'>Retry</a>");
con.close();
}
catch(SQLException e){
	out.println(e);
}
catch(Exception e){
	out.println(e);
}
%>
<input type="text" name="sco" placeholder="Enter Scheme number here">
<input type="submit" name="click">
</form>
</body>
</html>