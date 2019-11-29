<%-- 
    Document   : edit Company
    Created on :14-09-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.mvc.crud.beans.JobBean"%>
<%@page import="com.mvc.crud.dao.JobProviderDAO"%>
<body background="images/bg_1.jpg">
	<% 
String compname=request.getParameter("company");

out.println("<form name='demo' action='editCompAction.jsp'>");
out.println("Name:<input type='text' name='compname' >" );
out.println("Description:<input type='text' name='compdes' >" );
//out.println("iD:<input type='text' name='compid' >" );
out.println("vacancy:<input type='text' name='compvac' >" );
out.println("role:<input type='text' name='comprole' >" );
out.println("<input type='submit' name='submit' value='submit' >");
%>
</body>