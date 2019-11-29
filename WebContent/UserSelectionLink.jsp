<!-- 
    Document   : Select user 
    Created on : 13/11/209
    Author     : Tune4Jobs
 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.mvc.crud.beans.JobBean"%>
<%@ page import="com.mvc.crud.dao.insertQualification"%>
<%@ page import="com.mvc.crud.dao.JobSeekerRegDAO"%>
<%@ page import="java.util.*"%>

<%
	//Checking session if not exists redirect to index.html

	String username = (String) session.getAttribute("username");
	if (username == null) {
		response.sendRedirect("home.html");
	}
%>
<html>
<head>
<title>Tune4Jobs</title>
<link rel="stylesheet" href="css/candid.css">
</head>
<body background="images/bg_1.jpg">
	<nav align="right">
		<a href="home.html">Home</a>&nbsp&nbsp&nbsp <a href="logout.jsp">Logout</a>
	</nav>
	<h1 align="center" class="head">WELCOME TO TUNE4JOBS</h1>
	<br>
	<center>
		<button class="candidButton">
			<a class="candidLink" href="ViewCandidateProfile.jsp">View your
				profile</a>
		</button>
		<br>
		<br>
		<button class="providerButton">
			<a class="providerLink" href="UserCompanySelection.jsp">Click
				here to view company details</a>
		</button>
		<button class="providerButton">
			<a class="providerLink" href="SendFeedback.jsp">Give a feedback</a>
		</button>
	</center>
</body>
</html>