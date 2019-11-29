<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	String username = (String) session.getAttribute("name");
	System.out.println(username);
	if (username == null) {
		response.sendRedirect("Admin.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Tune4Jobs</title>
<link rel="stylesheet" href="css/candid.css">
</head>
<body background="images/bg_1.jpg">
	<nav align="right">
	<a href="home.html">LOGOUT</a></nav>
	<center>
		<h1>WELCOME ADMIN</h1>
		<button class="candidButton">
			<a class="candidLink" href="CandidateListAdmin.jsp">View
				Candidate</a>
		</button>
		<br>
		<br>
		<button class="providerButton">
			<a class="providerLink" href="CompanyListAdmin.jsp">View Job
				Provider</a>
		</button>
	</center>
</body>
</html>