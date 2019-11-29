<%-- 
    Document   : User Login
    Created on : 18-11-2019
    Author     : Tune4jobs
--%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tune4Jobs</title>
</head>
<body>
	<center>
		<form action="insertLoginAction.jsp">
			<table>
				<tr>
					<td><input type="text" name="seekerUsername" required
						placeholder="Username"><br>
				<tr>
					<td><input type="password" name="seekerPassword" required
						placeholder="Password"><br>
				<tr>
					<td><input type="submit" value="LOGIN">
			</table>

		</form>
	</center>

</body>
</html>