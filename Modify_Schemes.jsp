<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css?<?php echo time(); ?>" />
<title>Modify Page</title>
</head>
<body>
<form method="post" action="Modifying.jsp">
<h3>Modify Here</h3>  
<input type="text" name="tod" placeholder="Enter Type of Disability Here"><br>
<input type="text" name="schme" placeholder="Enter Scheme Details here">
<input type="submit" name="submit">
</form>
<% 
String sco1=null; 
sco1=session.getAttribute("sco").toString();
session.setAttribute("sco1",sco1);
%>
</body>
</html>