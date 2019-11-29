<!-- 
    Document   : Admin Login
    Created on : 13/11/209
    Author     : Tune4Jobs
 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tune4Jobs</title>
</head>
<body background="images/bg_1.jpg">
	<center>
		<form action="AdminLogin.jsp">

			<table>
				<h2>LOGIN</h2>
				<tr>
					<td>Username<input type="text" name="name"></td>
				</tr>

				<tr>
					<td>Password<input type="password" name="pass"></td>
				</tr>

				<tr>
					<td><input type="submit" name="login" value="Login"></td>
				</tr>

			</table>

		</form>
	</center>
</body>
</html>