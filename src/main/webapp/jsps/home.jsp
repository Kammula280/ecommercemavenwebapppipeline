<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ecommerce- Home Page</title>
<link href="images/ecomlogo.png" rel="icon">
</head>
</head>
<body>
<h1 align="center">Welcome to E commerce java web application.</h1>
<h1 align="center"> This is the java application to be used for demo purposes while practising devops methodologies. The build tool used is maven, application is running in tomcat server</h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
</h1>
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/ecomlogo.jpg" alt="" width="100">
	</span>
	<span style="font-weight: bold;">
		Ecommerce solutions 
		Technology 
	    slickcity
		5151522225225
		5225215
		<br>
		<a href="mailto:gmail@gmail.com">Mail to gmail</a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<hr>
<p align=center>Ecommerce solution expert in slickcity</p>
<p align=center><small>Copyrights 2019 by <a href="http:/égoogle.com">no copy rights</a> </small></p>

</body>
</html>
