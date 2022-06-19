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
<form  action="test8.jsp" method="get">
<%!String cid1,u_name;%>
<%
u_name = session.getAttribute("u_name").toString();
cid1=session.getAttribute("cid1").toString();
%>
<h2>REGISTER HERE</h2>
<hr class="line">
<div class="details" >
	<%=cid1%>
	<h4> CARE TAKER DETAILS : </h4><br>
    NAME <input type="text"  name="cfl" id="cname" placeholder="Enter caretaker name"> &nbsp;&nbsp;
    AGE <input type="number" name="cage"> <br><br>
    GENDER:   Male <input type="radio" name="gender" value="Male"> Female <input type="radio" name="gender" value="Female"> Others <input type="radio" name="gender" value="Others"> <br><br>
	MOBILE <input type="text"  name="cphno"> &nbsp;&nbsp;
	STREET <input type="text"  name="cstreet"> <br><br>
	STREET NO <input type="text"  name="cstno"> &nbsp;&nbsp;
	LOCALITY <input type="text"  name="cloc"> &nbsp;&nbsp;
	PINCODE <input type="number"  name="cpin"> &nbsp;&nbsp;
<button type="submit" class="registerbtn">REGISTER</button>
</div>
	<% 
String sco1=null; 
sco1=session.getAttribute("u_name").toString();
session.setAttribute("sco1",sco1);
%>
<input type="submit" value="submit">
</form>
</body>
</html>