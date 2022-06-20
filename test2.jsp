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

int tod1=Integer.parseInt(tod);
//Address Table

sname=request.getParameter("street");
sno=request.getParameter("sno");
locality=request.getParameter("loc");
pincode=request.getParameter("pin");
int age1=Integer.valueOf(age);
int phno=Integer.parseInt(phn_no);
int sno1=Integer.valueOf(sno);
int pin1=Integer.valueOf(pincode);
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
int cid1=Integer.parseInt(cid);
int cage1=Integer.parseInt(cage);
int sno2=Integer.parseInt(cstno);
int pin2=Integer.parseInt(cpin);
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
 String sql1 ="insert into personal_details(udid,age,gender,phn_no,fname) values('"+udid+"',"+age1+",'"+gender+"','"+phno+"','"+fname+"')";
 String sql2 ="insert into disabled_address(hno,sname,sno,locality,pincode) values('"+hno+"','"+sname+"',"+sno1+",'"+locality+"',"+pin1+")";
 String sql3="insert into caretaker_details(cid,cname,cage,cgender,cphno,chno) values("+cid1+",'"+cname+"',"+cage1+",'"+cgender+"','"+cphno+"','"+chno+"')";
 String sql4 ="insert into caretaker_address(chno,sname,sno,locality,pincode) values('"+chno+"','"+cstreet+"',"+sno2+",'"+cloc+"',"+pin2+")";
 String sql5 ="insert into typeofdisability_details (udid,tod) values('"+udid+"',"+tod1+")";
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
 st.executeUpdate(sql5);
 out.println("<br>TypeofDIsability successfully inserted for tod:"+tod1);
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