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
String schme=null,sco2=null; 
schme=request.getParameter("schme");
sco2=session.getAttribute("sco1").toString();
int sco3=Integer.valueOf(sco2);
int tod1=Integer.parseInt(request.getParameter("tod"));
try
{
	//"com.mysql.jdbc.Driver"

Class.forName("com.mysql.cj.jdbc.Driver");
//Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1", "root", "kosigi2568");
Statement st=conn.createStatement();
 st = conn.createStatement(); 
 st.executeUpdate("update display_schemes set tod="+tod1+",schme='"+schme+"' where sco="+sco2);
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