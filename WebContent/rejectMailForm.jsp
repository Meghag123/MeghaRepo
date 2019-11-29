<%-- 
    Document   : reject mail Action
    Created on : 17-11-2019
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

Emailer.send(from,pass,to,"Regarding the candidate selection","We are sorry to inform that you are not eligible for the applied post. Thank you for showing the interest for our company.");
%>
<html>
<body  background="images/bg_1.jpg">
<center>
<h1>Mail Send Successfully.....</h1>
<a class="edit" href="UserSelectionLink.jsp"><h3>Go Back</h2></a>
</center>
</body>
</html>