<%-- 
    Document   : send feedback action
    Created on : 17-11-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.mvc.crud.dao.JobProviderDAO"%>
<%@ page import="com.mvc.crud.beans.JobBean"%>
<%@ page import="com.mvc.crud.dao.JobSeekerRegDAO"%>
<%@ page import="java.util.ArrayList"%>
<%
	String name = request.getParameter("name");
	String message = request.getParameter("feedback");
	String date = request.getParameter("date");
	JobBean jobBean = new JobBean();
	jobBean.setName(name);
	jobBean.setDate(date);
	jobBean.setFeedback(message);
	boolean flag = JobSeekerRegDAO.insertFeedback(jobBean);
	if (flag) {
		response.sendRedirect("success.jsp");
	} else {
		out.print("Error");
	}
%>