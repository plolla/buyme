<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BuyMe: Auction List</title>
</head>
<style>
		h1 {margin-top: 0px; font-size:28px;}
		a {font-weight: bold;}
		a:link { color: black; text-decoration: none;}
		a:visited {color: black; text-decoration: none;}
		a:hover {color: black; text-decoration: underline;}
	</style>
	<div class="h1"><h1><a href="LoginSuccess.jsp"> BuyMe </a></h1></div>
<center><body>	
<p style="font-size:20px"><strong> Auction List</strong></p>
<br>
		<%
		try {

			//Get the database connection
			ApplicationDB db = new ApplicationDB();	
			Connection con = db.getConnection();
			
			//Create a SQL statement
			Statement stmt = con.createStatement();
			
			
			String query = "select name from items";
	        ResultSet result = stmt.executeQuery(query);
	        //ResultSetMetaData metaData = result.getMetaData();
	        
	        int i = 1;
	        out.println("<form action='BuyPage.jsp'>");
	        while(result.next()) {
	        	
	        	out.println("<a style='font-size:18px' href='BuyPage.jsp?num="+ i + "'>" + result.getString(1) + "</a>");
	        	request.getSession().setAttribute("selectedItem"+i, result.getString(1));
	        	
	        	out.println("<br>");
	        	i++;
	        }
	        out.println("</form>");
			//Close the connection. Don't forget to do it, otherwise you're keeping the resources of the server allocated.
			con.close();
			
			
		} catch (Exception ex) {
			out.print(ex);
			out.print("insert failed");
		}
	%>
	<br></br>
	<form action="LoginSuccess.jsp">
		<input type="submit" value="Go back to main page">
	</form>
</body></center>
</html>