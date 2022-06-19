<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Rstyle.css" />
<title>Re-gistration Page</title>
</head>
<body>
<form  action="test7.jsp" method="get">
<%!String u_name;%>
<%
u_name=session.getAttribute("u_name").toString();
%>
<h2>REGISTER HERE</h2>
<hr class="line">
<div class="details" >
	<%=u_name%>
	<h4>  PERSONAL  DETAILS :</h4>
	NAME  <input type="text" name="fname" id="name" placeholder="Enter your name"> &nbsp;&nbsp;
	AGE  <input type="text" name="page"> <br><br>
	D.O.B <input type="text" name="pdob" placeholder="dd/mm/yyyy"> &nbsp;&nbsp;
	GENDER:   Male <input type="radio" name="gender" value="Male"> Female <input type="radio" name="gender" value="Female"> Others <input type="radio" name="gender" value="Others"> <br><br>
	MOBILE <input type="text"  name="phno">
	
	<h4>  ADDRESS OF DISABLED PERSON : </h4>
     H.NO <input type="text" name="hno"> &nbsp; &nbsp;
	 STREET <input type="text" name="street"> &nbsp;&nbsp;
	 STREET NO <input type="text" name="sno"> <br><br>
	 LOCALITY <input type="text" name="loc"> &nbsp;&nbsp;
	 PINCODE <input type="number"  name="pin">
	 
<button type="submit" class="registerbtn">REGISTER</button>
</div>
	</form>
	<% 
String sco1=null; 
sco1=session.getAttribute("u_name").toString();
session.setAttribute("sco1",sco1);
%>
<%=sco1%>
</body>
</html>