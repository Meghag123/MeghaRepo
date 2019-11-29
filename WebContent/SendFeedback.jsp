<%-- 
    Document   : Send feedback
    Created on : 17-11-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.mvc.crud.dao.JobProviderDAO"%>
<%@ page import="com.mvc.crud.beans.JobBean"%>
<%@ page import="java.util.ArrayList"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback</title>
</head>
<body background="images/bg_1.jpg">
	<center>
		<form name="feedback" method="post" action="SendFeedbackAction.jsp">
			<br> <br>
			<h1>Please Send Your Feedback Here...</h1>
			<br>
			<table>
				<tr>
					<td><b>Username:</b></td>
					<td><input type="text" name="name" /></td>
				</tr>
				<%
					
				%>
				<tr>
					<td><b>Feedback</b></td>
					<td><input type="textarea" name="feedback" required="" /></td>
				</tr>
				<tr>
					<td><b>Date</b></td>
					<td><input type="date" name="date" required="" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Send your feedback"></td>
				</tr>
			</table>
		</form>
	</center>
</body>

</html>
