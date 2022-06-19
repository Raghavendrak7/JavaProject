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
String u_name="",pa_wd="";
u_name=request.getParameter("u_name");
pa_wd=request.getParameter("pa_wd");
session.setAttribute("u_name",u_name);
try{
Class.forName("com.mysql.cj.jdbc.Driver");
//Establish connection to databse server
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1","root","kosigi2568");
Statement stmt=con.createStatement();
stmt=con.createStatement();
ResultSet rs;
rs=stmt.executeQuery("select pwd from login where udid='"+u_name+"'");
/*
rs1=stmt.executeQuery("select * from Pdetails where udid=u_name");
rs2=stmt.executeQuery("select hno,cid from alogin where udid=u_name");
rs3=stmt.executeQuery("select * from address where hno=hno1");
rs4=stmt.executeQuery("select * from Cdetails where cid=cid1");
rs5=stmt.executeQuery("select * from caddress where chno=chno1");*/
String uname="",pwd="",hno1="",cid1="",age="",gender="",phn_no="",fname="";
/*String sname="",sno="",locality="",pincode="";
String cname="",cage="",cgender="",cphno="",chno1="";
String csname="",csno="",clocality="",cpincode="";*/
if(u_name!=null)
{
	session.setAttribute("u_name",u_name);
	while(rs.next())
	{
		pwd=rs.getString("pwd");
	}
	if(pa_wd.equals(pwd))
	{
		%>
        <h1>Welcome To Our Home Page<%out.println("  "+u_name);%></h1>
		<div class="topnav">
		  <a class="active" href="#home">Home</a>
		  <a href="Pdetails.jsp">Personal Details</a>
		  <a href="Cdetails.jsp">Care Taker Details</a>
		  <a href="Scholarship2.jsp">Scholarship Details</a>
		  <a href="job1.jsp">Job Quota Details</a>
		  <a href="Demo15.jsp"><span style= "font-size:16px , align: right;">Logout <i class="fa fa-sign-out"></i></span></a>
		</div>	
<%
	}
	else
		out.println("Invalid Credentials Check Username or Password2!"+"<a href='Demo15.jsp'>Retry</a>");	
}
else
	out.println("Invalid Credentials Please try again!"+"<a href='Demo15.jsp'>Retry</a>");
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