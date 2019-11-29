  <%-- 
    Document   : edit Candidate
    Created on : 16-11-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.mvc.crud.beans.JobBean"%>
<%@page import="com.mvc.crud.dao.JobSeekerRegDAO"%>
<%@page import="java.util.*"%>
<%
	out.println("*You can edit only certain fields");
%>
<html>
<head>
<title>Tune4Jobs</title>
</head>
<body background="images/bg_1.jpg">
	<center>
		<form action="editCandidateProfileAction.jsp" method="post">
			<table class="body">
				<tr>
					<td><b>Qualification</b>
					<td><select name="qualification">
							<option value="select">Select</option>
							<option value="SSLC">SSLC</option>
							<option value="plustwo">PLUSTWO</option>
							<option value="degree/diploma">DIPLOMA IN
								ELECTRICAL/ITI</option>
							<option value="hotel management">HOTEL MANAGEMENT</option>
					</select><br>
					<br></td>
				</tr>
				<tr>
					<td><b>Experience</b>
					<td><input type="text" name="experience" required
						placeholder="Experience"><br> <br></td>
				</tr>
				<tr>
					<td><b>Language</b>
					<td><input type="text" name="language" required
						placeholder="language"><br> <br></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>