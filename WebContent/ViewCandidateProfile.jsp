<%-- 
    Document   : view Candidate
    Created on : 13-11-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.mvc.crud.dao.JobProviderDAO"%>
<%@ page import="com.mvc.crud.dao.JobSeekerRegDAO"%>
<%@ page import="com.mvc.crud.dao.insertQualification"%>
<%@ page import="com.mvc.crud.beans.JobBean"%>
<%@ page import="java.util.ArrayList"%>
<%
	String userFname = null;
	String userLname = null;
	String userGender = null;
	String userDob = null;
	String userAddress = null;
	String userPhone = null;
	String userAltPhone = null;
	String userEmail = null;
	String qualification = null;
	String stream = null;
	String language = null;
	String experience = null;
	String post = null;
	String image = null;
	session = request.getSession(false);

	String id = (String) session.getAttribute("u_id");
	//post=(String)session.getAttribute("post");
	System.out.println("session id=" + id);
	JobBean jobBean = new JobBean();
	jobBean.setUid(id);

	ArrayList<JobBean> jb = insertQualification.viewCandidateProfile(jobBean);

	for (JobBean eb : jb) {
		userFname = eb.getUserFname();
		userLname = eb.getUserLname();
		userGender = eb.getUserGender();
		userDob = eb.getUserDob();
		userAddress = eb.getUserAddress();
		userPhone = eb.getUserPhone();
		userAltPhone = eb.getUserAltPhone();
		userEmail = eb.getUserEmail();
		qualification = eb.getQualification();
		stream = eb.getStream();
		language = eb.getLanguage();
		experience = eb.getExperience();
		post = eb.getPost();
		image = eb.getImage();

	}

	JobBean jobbean = new JobBean();

	int size = 0;
	size = jb.size();
	if (size == 0) {
%>
<h3 align="center">NO DATA TO SHOWN</h3>
<%
	} else {

		//out.println(getCompdes());

		int i = 0;

		for (JobBean it : jb) {
%>
<style>
.text {
	background-colour: green;
}
</style>

<html>
<head>
<title>Tune4Jobs</title>
<link rel="stylesheet" href="css/candid.css">
</head>

<body class="text" background="images/bg_1.jpg">
	<h1 align="center">
		Welcome
		<%
		out.println(it.getUserFname());
	%>
	</h1>
	<table class="table" align="center">
		<tr>
			<td><img src="image/<%=it.getImage()%>" width="115" height="128" /><br>
				<br> </b>
		</tr>
		<tr>
			<td><b>First Name<span></b></span>
			<td><b>
					<%
						out.println(it.getUserFname());
					%>
			</b><br>
		<tr>
			<td><b>Last Name</b>
			<td><b>
					<%
						out.println(it.getUserLname());
					%>
			</b><br>
		<tr>
			<td><b>Gender</b>
			<td><b>
					<%
						out.println(it.getUserGender());
					%>
			</b><br>
		<tr>
			<td><b>Date Of Birth</b>
			<td><b>
					<%
						String str=it.getUserDob().substring(0,10);
						out.println(str);
					%>
			</b><br>
		<tr>
			<td><b>Address</b>
			<td><b>
					<%
						out.println(it.getUserAddress());
					%>
			</b><br>
		<tr>
			<td><b>Phone Number</b>
			<td><b>
					<%
						out.println(it.getUserPhone());
					%>
			</b><br>
		<tr>
			<td><b>Alternative Phone Number</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			
			<td><b>
					<%
						out.println(it.getUserAltPhone());
					%>
			</b><br>
		<tr>
			<td><b>Email</b>
			<td><b>
					<%
						out.println(it.getUserEmail());
					%>
			</b><br>
		<tr>
			<td><b>Qualification</b>
			<td><b>
					<%
						out.println(it.getQualification());
					%>
			</b><br>
		<tr>
			<td><b>Stream</b>
			<td><b>
					<%
						out.println(it.getStream());
					%>
			</b><br>
		<tr>
			<td><b>Experience</b>
			<td><b>
					<%
						out.println(it.getExperience());
					%><b><br>
						<tr>
							<td><b>Languages Known</b>
							<td><b>
									<%
										out.println(it.getLanguage());
									%>
							</b><br>
						<tr>
							<td><b>Post</b>
							<td><b>
									<%
										out.println(it.getPost());
									%>
							</b><br>
	</table>
	<%
		}
	%>
	<center>
		<a class="edit" href="editCandidateProfile.jsp"><h3>
				Edit
				</h2></a> <a class="edit" href="UserSelectionLink.jsp"><h3>
				Go Back
				</h2></a>

	</center>

</body>

<%
}
%>