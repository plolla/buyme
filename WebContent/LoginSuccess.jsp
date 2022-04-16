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
<center><body>
	<br>
	<%
	try {
		
		//Get the database connection
		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();

		//Create a SQL statement
		Statement stmt = con.createStatement();

		//Get parameters from the HTML form at the index.jsp
		String username = (String)request.getSession().getAttribute("username");
		out.print("Welcome to BuyMe, " + username + "!");
        
		//Close the connection. Don't forget to do it, otherwise you're keeping the resources of the server allocated.
		con.close();
		
	} catch (Exception ex) {
		out.print(ex);
		out.print("insert failed");
	}
%>
	<br><br><br>
	<form action="AuctionList.jsp">
		<input type="submit" value="Buy">
	</form> 
	<br>
	or      
	<br> 
	<form action="SellerForm.jsp">
		<input type="submit" value="Sell">
	</form>
	<br></br><br></br><br></br><br></br>
	<form action="Home.jsp">
		<input type="submit" value="Logout">
	</form>

</body></center>
</html>