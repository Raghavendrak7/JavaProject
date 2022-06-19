<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.lang.Class" %>  
<%@ page import ="java.lang.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Data</title>
</head>
<body>
<% 
String fname=null,sco2=null,age=null,dob=null,gender=null,phno=null,hno=null,sname=null,sno=null,locality=null,pincode=null,hno1=null; 
sco2=session.getAttribute("sco1").toString();
fname=request.getParameter("fname");
age=request.getParameter("page");
dob=request.getParameter("pdob");
gender=request.getParameter("gender");
phno=request.getParameter("phno");
hno=request.getParameter("hno");
sname=request.getParameter("street");
sno=request.getParameter("sno");
locality=request.getParameter("loc");
pincode=request.getParameter("pin");
int age1=Integer.valueOf(age);
int phn_no=Integer.parseInt(phno);
int sno1=Integer.valueOf(sno);
int pin1=Integer.valueOf(pincode);
out.print("<br>The Udid is:"+sco2);
try
{
	//"com.mysql.jdbc.Driver"

Class.forName("com.mysql.cj.jdbc.Driver");
//Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1", "root", "kosigi2568");
Statement st=conn.createStatement();
 st = conn.createStatement(); 
 ResultSet rs;
rs=st.executeQuery("select hno from after_login where udid='"+sco2+"'");
while(rs.next())
{
	hno1=rs.getString("hno");
}
 st.executeUpdate("update personal_details set age="+age1+",phn_no="+phn_no+",gender='"+gender+"',fname='"+fname+"'  where udid='"+sco2+"'");
 st.executeUpdate("update disabled_address set sno="+sno1+",sname='"+sname+"',locality='"+locality+"',pincode="+pin1+"  where hno='"+hno1+"'");
 out.println("Data is successfully updated!");

 conn.close();
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