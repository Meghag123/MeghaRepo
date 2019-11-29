<%-- 
    Document   : mail sends
    Created on : 15-11-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "com.mvc.crud.dao.Emailer" %>

<%
String from=request.getParameter("from");
String pass=request.getParameter("pass");
String to=request.getParameter("to");

Emailer.send(from,pass,to,"Regarding the candidate selection","This is a confirmation mail on behalf of your application towards our company. Thank you for showing the interest for our company. You have been shortlisted. You will be contacted soon.....");
%>
<html>
<head>
<title>Tune$Jobs</title>
</head>
<body>
<center>
<h1>Mail Send Successfully.....</h1>
<a class="edit" href="UserSelectionLink.jsp"><h3>Go Back</h2></a>
</center>
</body>
</html>