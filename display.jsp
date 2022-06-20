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
String udid,schme=null;
int sco,tod1,tod3;
udid=session.getAttribute("u_name").toString();
out.print("<br>The Udid is:"+udid);
try
{
	//"com.mysql.jdbc.Driver"
Class.forName("com.mysql.cj.jdbc.Driver");
//Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1", "root", "kosigi2568");
Statement st=conn.createStatement();
Statement st1=conn.createStatement();
 ResultSet rs,rs1;
rs=st.executeQuery("select tod from typeofdisability_details where udid='"+udid+"'");
while(rs.next())
{
	tod1=Integer.parseInt(rs.getString("tod"));
	out.println("Data is successfully updated!"+tod1);
	%>
	<table border=1>
	<tr>
	<th>Scheme No</th>
	<th>Type of Disability</th>
	<th>Scheme Name</th>
	</tr> 
	</table>
	<%
	rs1=st1.executeQuery("select * from display_schemes where tod='"+tod1+"'");
	while(rs1.next())
	{
		sco=rs1.getInt("sco");
		tod3=rs1.getInt("tod");
		schme=rs1.getString("schme");
		%>
		<table border=1>
		<tr>
		<td><%=sco%></td>
		<td><%=tod3%></td>
		<td><%=schme %></td>
		</tr>
		</table>
		<%
	}
}
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