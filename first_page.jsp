<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html> 
    <head> 
        <title>Create table in mysql database using jsp</title>
    </head> 
    <body bgcolor="#ffffcc">
        <form action="Registration.jsp" method="get">
            <TABLE style="background-color: #ECE5B6;" WIDTH="28%">
                <tr width="50%">
                    <td >Full Name</td>
                    <td ><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td width="20%">Care_Taker Id:</td>
                     <td ><input type="text" name="cid"></td>
                </tr>
                <tr>
                    <td width="20%">Udid_No.</td>
                     <td ><input type="text" name="u_name"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pa_wd"></td>
            </TABLE>
            <input type="submit" name="submit" value="Submit">
        </form>
    </body> 
</html>