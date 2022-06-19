<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="scholarship.jsp">
<label for="count">Select your annual Income:</label>
<select name="count" id="count">
    <option value="1">Rs.0-10000</option>
    <option value="2">Rs.10000-25000</option>
    <option value="3">Rs.25000-50000</option>
    <option value="4">Rs.50000-75000</option>
    <option value="5">Rs.75000-100000</option>
    <option value="6">Rs.100000-150000</option>
    <option value="7">Rs.150000-200000</option>
    <option value="8">Rs.200000-250000</option>
    <option value="9">Rs.250000 and above</option>
</select>
<input type="submit" name="submit">
</form>
<%
String sco1=null; 
sco1=session.getAttribute("u_name").toString();
session.setAttribute("sco1",sco1);
%>
</body>
</html>