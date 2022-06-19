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
<%
String aid=null,apwd=null;
aid=request.getParameter("aid");
apwd=request.getParameter("apwd");
session.setAttribute("aid",aid);
session.setAttribute("apwd",apwd);
try{
Class.forName("com.mysql.cj.jdbc.Driver");
//Establish connection to databse server
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1","root","kosigi2568");
Statement stmt=con.createStatement();
stmt=con.createStatement();
ResultSet rs;
rs=stmt.executeQuery("select apwd from admin_login where aid='"+aid+"'");
if(aid!=null)
{
	while(rs.next())
	{
		apwd=rs.getString("apwd");
	}
	if(apwd.equals(apwd))
	{
		%>
        <h1>Welcome To Our Home Page Administrator:<%out.println("  "+aid);%></h1>
		<div class="topnav">
		  <a class="active" href="#home">Home</a>
		  <a href="Update_schemes.jsp">Add Schemes </a>
		  <a href="Delete_schemes.jsp">Modify Schemes</a>
		  <%-- 
		  <a href="scholarship.jsp">Scholarship Details</a>
		  <a href="Quota.jsp">Job Quota Details</a>--%>
		  <a href="admin_login.jsp"><span style= "font-size:16px , align: right;">Logout <i class="fa fa-sign-out"></i></span></a>
		</div>	
<%
	}
	else
		out.println("Invalid Credentials Check Username or Password2!"+"<a href='admin_login.jsp'>Retry</a>");	
}
else
	out.println("Invalid Credentials Please try again!"+"<a href='admin_login.jsp'>Retry</a>");
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