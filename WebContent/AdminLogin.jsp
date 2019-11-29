<%-- 
    Document   : Admin Login
    Created on :14-09-2019
    Author     : Tune4jobs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mvc.crud.beans.JobBean"%>
<%@page import="com.mvc.crud.dao.JobSeekerRegDAO"%>
<%@page import="java.util.*"%>

<%
session=request.getSession();
String username=request.getParameter("name");

session.setAttribute("name",username);

System.out.println("username of admin"+username);
String password=request.getParameter("pass");


if(username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin") ){
	response.sendRedirect("AdminAction.jsp");
}
else{
	out.println("error");
}



%>