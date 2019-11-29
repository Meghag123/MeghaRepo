<%-- 
    Document   : Company details Details
    Created on :14-09-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.mvc.crud.dao.JobProviderDAO"%>
<%@ page import="com.mvc.crud.beans.JobBean"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.*"%>


<head>
<title>Tune4Jobs</title>
<link rel="stylesheet" href="css/candid.css">
</head>

<body background="images/bg_1.jpg">
	<center>
		<%
			session = request.getSession(false);
			String compname = (String) session.getAttribute("compname");

			out.print("<tr><th><h1>Welcome  </th><th>" + compname + "</h1></th></tr><br><br>");
			
			session.setAttribute("company",compname);
			System.out.println("the company name in login="+compname);
		%>

		<button class="candidButton">
			<a class="candidLink" href=AppliedCandidateListViewAction.jsp>Click
				here to view applied candidates</a>
		</button><br><br>
			<button class="candidButton">
			<a class="candidLink" href=viewDescriptionCompanyLogin.jsp>Click
				here to view Company Description</a>
		</button>

	</center>
</body>
</html>