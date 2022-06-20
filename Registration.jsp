<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="regstyle.css" type="text/css">
</head>
<%!String u_name;%>
<%!String pa_wd,fname,cid;%>
<body bgcolor="#ffffcc">
<%
u_name=request.getParameter("u_name");
pa_wd=request.getParameter("pa_wd");
fname=request.getParameter("name");
cid=request.getParameter("cid");
session.setAttribute("u_name",u_name);
session.setAttribute("cid",cid);
session.setAttribute("pa_wd",pa_wd);
%>
<h2>Register Here</h2>
	<form id="pd" action="test2.jsp" method="get">
	<div class="pdetails" >
	<font style ='Georgia, serif' size='+2' color='white'> </font>
	<%
	out.print("<br>Welcome:"+fname);
	out.println("<br>Please Enter the details for the following UDID:<br>"+u_name);
	%>
	<b>1.Personal Details</b><br>
	<table width=100%>
	<tr><td>NAME :<input type="text" size=20 name="fname" id="name" placeholder="Enter your name"></td>
	<td>AGE :<input type="number" name="page"></td>
	<td>D.O.B :<input type="text" name="pdob" placeholder="dd/mm/yyyy"></td></tr>
	<tr><td>GENDER :male<input type="radio" name="gender">female<input type="radio" name="gender">others<input type="radio" name="gender"></td>
	<td>MOBILE :<input type="text" size=10 name="phno"></td></tr>
	</table>
	</div>
	<div class="paddress">
	<b><u><br><br>2.Address Of Disabled Person</u></b><br>
	<table width=100%>
	<tr><td>H.NO :<input type="text" size=20 name="hno"></td>
	<td>STREET :<input type="text" size=10 name="street"></td>
	<td>STREETNO. :<input type="text" size=10 name="sno"></td></tr>
	<tr><td>LOCALITY :<input type="text" size=10 name="loc"></td>
	<td>PINCODE :<input type="number"  name="pin"></td></tr>
	</table>
	</div>
	<div class="listof">
	<b><br><br>3.Type of Disabilities</b><br>
	<select id="tod" name="tod">
	<option value="1">BLINDNESS</option>
	<option value="2">HEARING IMPAIRMENT</option>
	<option value="3">MENTAL HEALTH</option>
	<option value="4">LOCOMOTOR DISABLITY</option>
	<option value="5">INTELLECTUAL DISABILITY</option>
	<option value="6">CEREBRAL PALSY</option>
	</select>
	</div>
	<div class="cdetails">
	<b><br><br>4.Caretaker Details</b><br>
	<table width=100%>
		<% out.println("<br>Please Enter the details for the following CareTaker_Id:<br>"+cid);%>
	<tr><td>NAME :<input type="text" size=20 name="cfl" id="cname" placeholder="Enter caretaker name"></td>
	<td>AGE :<input type="number" name="cage"></td>
	<td>GENDER :male<input type="radio" name="cgender">female<input type="radio" name="cgender">others<input type="radio" name="cgender"></td></tr>
	<tr><td>MOBILE :<input type="text" size=10 name="cphno"></td></tr>
	<tr><td>H.NO :<input type="text" size=6 name="chno"></td>
	<td>STREET :<input type="text" size=25 name="cstreet"></td>
	<td>STREETNO. :<input type="text" size=25 name="cstno"></td></tr>
	<tr><td>LOCALITY :<input type="text" size=50 name="cloc"></td>
	<td>PINCODE :<input type="number"  name="cpin"></td></tr>
	</table>
	</div>
	<div class="sub"><input type="submit" name="click"></div></form>
</body>
</html>