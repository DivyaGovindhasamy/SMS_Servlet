<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
	<%
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms", "root", "root");
		ps = con.prepareStatement("select * from std");
		rs = ps.executeQuery();
	} catch (Exception e) {
		e.printStackTrace();
	} 
	%>
	<h1>Welcome to SMS Home Page </h1>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Phone</th>
				<th>UserName</th>
				<th>Password</th>
			</tr>
		</thead>
		<tbody>
			<%
			while(rs.next())
			{
			%>
			<tr>
				<td><%= rs.getInt(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) %></td>
				<td><%= rs.getLong(4) %></td>
				<td><%= rs.getString(5) %></td>
				<td><%= rs.getString(6) %></td>
			</tr>
			<%} %>
		</tbody>
	</table>
</body>
</html>