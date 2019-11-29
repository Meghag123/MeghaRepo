<%-- 
    Document   : mailAction
    Created on : 15-11-2019
    Author     : Tune4jobs
--%>
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
		<form action="mail.jsp" name="login" method="post">
			<h2>Send Mail</h2>
			<table>
				<tr>
					<td>From</td>
					<td><input type="text" name="from"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="pass"></td>
				</tr>
				<tr>
					<td>To</td>
					<td><input type="text" name="to"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Send"></td>
					<td></td>
				</tr>
				<tr>
					<td>
						</center>
			</table>
		</form>
</body>
</html>