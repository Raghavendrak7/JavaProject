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
<link rel="stylesheet" type="text/css" href="pstyles.css?<?php echo time(); ?>" />
<title>Personal Details</title>
</head>
<%!String u_name;%>
<body>
<form method="get" action="Update_Pdetails.jsp">
<%
u_name = session.getAttribute("u_name").toString();
session.setAttribute("u_name",u_name);
try
{
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1","root","kosigi2568");
	Statement stmt=con.createStatement();
	stmt=con.createStatement();
	String uname="",pwd="",hno1="",age="",gender="",phn_no="",fname="";
	String sname="",sno="",locality="",pincode="";
	ResultSet rs,rs1,rs2,rs3;
	rs1=stmt.executeQuery("select fname,age,gender,phn_no from personal_details where udid='"+u_name+"'");
	out.print("Personal Details");
	while(rs1.next())
	{
		fname=rs1.getString("fname");
		age=rs1.getString("age");
		gender=rs1.getString("gender");
		phn_no=rs1.getString("phn_no");	
	}
	out.println(fname+age+gender+phn_no);
	rs2=stmt.executeQuery("select hno from after_login where udid='"+u_name+"'");
	while(rs2.next())
	{
		hno1=rs2.getString("hno");
	}
	rs3=stmt.executeQuery("select * from disabled_address where hno='"+hno1+"'");
	out.print("<br> Address");
	while(rs3.next())
	{
		sname=rs3.getString("sname");
		sno=rs3.getString("sno");
		locality=rs3.getString("locality");
		pincode=rs3.getString("pincode");
	}
	out.println(hno1+sname+sno+locality+pincode);
}
catch(Exception ex)
{
%><h2>


<% out.println(ex);%>
</h2>
<% 
ex.printStackTrace();
}
%>
<input type="submit" value="submit">
</form>
</body>
</html>