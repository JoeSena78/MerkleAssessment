<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registered User Report</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<% 
	Connection connection = DriverManager.getConnection("jdbc:odbc:data", "Steve", "password");
	Statement statement = connection.createStatement();
	ResultSet resultset = statement.executeQuery("select * from users");
%>
        
<table class="table">
	<tr>
		<td>First Name</td>
		<td>Last Name</td>
		<td>Address 1</td>
		<td>Address 2</td>
		<td>City</td>
		<td>State</td>
		<td>Zip</td>
		<td>Country</td>
		<td>Date</td>
	</tr>
	<% while(resultset.next()){ %>
            <tr>
                <td> <%= resultset.getString(1) %></td>
                <td> <%= resultset.getString(2) %></td>
                <td> <%= resultset.getString(3) %></td>
                <td> <%= resultset.getString(4) %></td>
                <td> <%= resultset.getString(5) %></td>
                <td> <%= resultset.getString(6) %></td>
                <td> <%= resultset.getString(7) %></td>
                <td> <%= resultset.getString(8) %></td>
                <td> <%= resultset.getString(9) %></td>
            </TR>
    <% } %>
</table>

</body>
</html>