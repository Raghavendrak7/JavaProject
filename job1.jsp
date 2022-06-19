<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Enter Details:</title>
</head>
<body>
<form method="get" action="Quota.jsp">
<label for="count">Select total number of attempts:</label>
<select name="count" id="count">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
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