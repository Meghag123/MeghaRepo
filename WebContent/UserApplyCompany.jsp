<%-- 
    Document   : User apply Action
    Created on : 18-11-2019
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
<title>Tune4Jobs</title>
<body background="images/bg_1.jpg">

	<%
session=request.getSession();
JobBean jobbean=new JobBean();
//String company=(String)session.getAttribute("company");
String company=request.getParameter("com");
String post=request.getParameter("post");
jobbean.setCompname(company);
System.out.println("the getted post name="+post);
session.setAttribute("company",company);
ArrayList<JobBean> eb=JobProviderDAO.viewDescription(jobbean);


int size=0;
	size=eb.size();
if(size==0){%>
	<h3 align="center">NO DATA TO SHOWN</h3>
	<% }else{

//out.println(getCompdes());




	int i=0;

		for(JobBean it:eb){
			
			
		%>
	<style>
.text {
	background-colour: green;
}
</style>
<head>
<title>Tune4Jobs</title>
<link rel="stylesheet" href="css/candid.css">
</head>


<body class="text" background="images/bg_1.jpg">

	<h1 align="center">
		<% out.println(it.getCompname());%>
	</h1>

	<h3>Company Description:</h3>
	<% out.println(it.getCompdes());%>




	<h3>Company Vacancy:</h3>
	<%out.println(it.getCompvac());%>

	<h3>Company Role:</h3>
	<% out.println(it.getComprole());%>

	<h3>Company Post:</h3>
	<% out.println(it.getComppost());%><br>
	<br>
	<%
			
			
			
		}
		
	}


%>
	<center>
		<button class="apply">
			<a class="aApply" href="candidateJobApplyAction.jsp">Apply Now</a>
		</button>
	</center>

</body>