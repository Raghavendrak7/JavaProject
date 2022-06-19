<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.lang.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Third_Page(Back_end)</title>
</head>
<body>
<%
//alogin tables
String cid=null,hno=null,udid=null,pwd=null,fname=null,age=null,gender=null,phn_no=null,udid1=null,dob=null,tod=null,sname=null,sno=null,locality=null,pincode=null,cname=null,cage=null,cpin=null,cloc=null,cstno=null,cstreet=null,chno=null,cphno=null,cgender=null;
hno=request.getParameter("hno");
udid= session.getAttribute("u_name").toString();
//Login Table
pwd=session.getAttribute("pa_wd").toString();
cid=session.getAttribute("cid").toString();
//pdetails table
fname=request.getParameter("fname");
age=request.getParameter("page");
gender=request.getParameter("gender");
phn_no=request.getParameter("phno");
dob=request.getParameter("pdob");
tod=request.getParameter("tod");
//Address Table

sname=request.getParameter("street");
sno=request.getParameter("sno");
locality=request.getParameter("loc");
pincode=request.getParameter("pin");
//Care Taker Details
cname=request.getParameter("cname");
cage=request.getParameter("cage");
cphno=request.getParameter("cphno");
cgender=request.getParameter("cgender");
chno=request.getParameter("hno");
cstreet=request.getParameter("cstreet");
cstno=request.getParameter("cstno");
cloc=request.getParameter("cloc");
cpin=request.getParameter("cpin");
try
{
	//"com.mysql.jdbc.Driver"

Class.forName("com.mysql.cj.jdbc.Driver");
//Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1", "root", "kosigi2568");
Statement st=conn.createStatement();
 st = conn.createStatement(); 
 String sql8 ="insert into login(udid,pwd) values('"+udid+"','"+pwd+"')";
 String sql ="insert into after_login(udid,hno,cid) values('"+udid+"','"+hno+"','"+cid+"')";
 String sql1 ="insert into personal_details(udid,age,gender,phn_no,fname) values('"+udid+"','"+age+"','"+gender+"','"+phn_no+"','"+fname+"')";
 String sql2 ="insert into disabled_address(hno,sname,sno,locality,pincode) values('"+hno+"','"+sname+"','"+sno+"','"+locality+"','"+pincode+"')";
 String sql3="insert into caretaker_details(cid,cname,cage,cgender,cphno,chno) values('"+cid+"','"+cname+"','"+cage+"','"+cgender+"','"+cphno+"','"+chno+"')";
 String sql4 ="insert into caretaker_address(chno,sname,sno,locality,pincode) values('"+chno+"','"+cstreet+"','"+cstno+"','"+cloc+"','"+cpin+"')";
 st.executeUpdate(sql8);
 out.println("<br>Login insertion successfull:"+udid);
 st.executeUpdate(sql);
out.println("<br> The House number is:"+hno);
st.executeUpdate(sql1);
out.println("<br>Pdetails successfully inserted for phn_no:"+phn_no);
st.executeUpdate(sql2);
 out.println("<br> address details successfully inserted for sname:"+sname);
 st.executeUpdate(sql3);
 out.println("<br>Cdetails successfully inserted for cid:"+cid);
 st.executeUpdate(sql4);
 out.println("<br>CAddress successfully inserted for locality:"+cloc);

  out.println("Data is successfully inserted!");
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

</body>
</html>