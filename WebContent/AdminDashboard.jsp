<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BuyMe: Login Success</title>
</head>
<style>
		h1 {margin-top: 0px;}
		a:link {color: black; text-decoration: none;}
		a:visited {color: black; text-decoration: none;}
		a:hover{color: black; text-decoration: underline;}
	</style>
	<div class="h1"><h1 style="font-size:30px"><strong> <a href="AdminDashboard.jsp"> BuyMe </a> </strong></h1></div>
<center><body>
<br>
<%
//Get parameters from the HTML form at the index.jsp
out.print("Welcome to BuyMe, admin!");
%>
<br><br><br>
<form action="CreateCusRepAcc.jsp">
	<input type="submit" style="font-size:15px;height:50px;width:300px" value="Create Customer Representative Account">
</form> 
<br><br>
<form action="SalesReportMain.jsp">
	<input type="submit" style="font-size:15px;height:50px;width:200px" value="Sales Report">
</form> 
<br></br><br></br>
<form action="Home.jsp">
	<input type="submit" style="font-size:15px;height:30px;width:200px" value="Logout">
</form>
</body></center>
</html>