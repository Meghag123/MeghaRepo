<%-- 
    Document   : home job provider
    Created on : 15-11-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="com.mvc.crud.dao.JobProviderDAO"%>
<%@ page import="com.mvc.crud.beans.JobBean"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
	String val = "";
	try {
		val = request.getParameter("val");
		if (val.equals(null)) {
			val = "";
		}
	} catch (Exception e) {
		val = "";
	}
%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="JobProviderStyle.css">
<meta charset="ISO-8859-1">
<title>SignIn</title>
</head>
<body>
	<div>
		<form action="CheckProviderName.jsp" name="login" method="post">
			<table>
				<tr>
					<td>Username</td>
					<td><input type="text" name="r_username"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="r_password"></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="submit"></td>
					<td></td>
				</tr>
				<tr>
					<td>For Users only<a href="SignUpJobProvider.html">SignUp</a></td>
				</tr>


			</table>
			<label name="msg" value="<%=val%>"
				style="margin-left: 580px; color: red;"><%=val%></label>
		</form>
	</div>
</body>
</html>