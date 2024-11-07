<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<div class="form">
	<h1>Login </h1>
	<form action="login" class="main" method="post">
		<input type="text" name="username" placeholder="Enter username"> <br><br> 
		<input type="password" name="password" placeholder="Enter Password"> <br><br>
		<button type="submit">Login</button>
	</form>
	<h3>Don't Have An Account<a href="reg.jsp">Click Here</a> to Create</h3>
	</div>
</body>
</html>