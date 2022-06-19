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
<title>Care Taker Details</title>
</head>
<%!String u_name;%>
<%!String cid1;%>
<body>
<form method="get" action="Update_Cdetails.jsp">
<%
u_name = session.getAttribute("u_name").toString();
try
{
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1","root","kosigi2568");
	Statement stmt=con.createStatement();
	stmt=con.createStatement();
	String cname="",cage="",cgender="",cphno="",chno1="";
	String csname="",csno="",clocality="",cpincode="";
	ResultSet rs2,rs4,rs5;
	rs2=stmt.executeQuery("select cid from after_login where udid='"+u_name+"'");
	while(rs2.next())
	{
		cid1=rs2.getString("cid");
	}
	session.setAttribute("cid1",cid1);
	out.print("Care Taker Details");
	rs4=stmt.executeQuery("select * from caretaker_details where cid='"+cid1+"'");
	while(rs4.next())
	{
		cname=rs4.getString("cname");
		cage=rs4.getString("cage");
		cgender=rs4.getString("cgender");
		cphno=rs4.getString("cphno");
		chno1=rs4.getString("chno");
	}
	out.print("Care Taker Address");
	rs5=stmt.executeQuery("select * from caretaker_address where chno='"+chno1+"'"); 
	while(rs5.next())
	{
		csname=rs5.getString("sname");
		csno=rs5.getString("sno");
		clocality=rs5.getString("locality");
		cpincode=rs5.getString("pincode");
	}
	out.println("The Care Taker Personal Details are:");
	out.println(cname+cage+cgender+cphno+chno1);
	out.println("His Address is:");
	out.println(csname+csno+clocality+cpincode);
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