
<%-- 
    Document   : insert Login Action
    Created on : 15-11-2019
    Author     : Tune4jobs
--%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.util.*"%>
<%@page import="com.mvc.crud.beans.JobBean"%>
<%@page import="com.mvc.crud.dao.JobSeekerRegDAO"%>
<%

 


String username=null;
String password=null;
String id=null;
String fname=null;
String lname=null;

session=request.getSession();
String seekerUsername=request.getParameter("seekerUsername");
String seekerPassword=request.getParameter("seekerPassword");
session.setAttribute("username",seekerUsername);
JobBean jobBean=new JobBean();

jobBean.setUserName(seekerUsername);
jobBean.setUserPassword(seekerPassword);

ArrayList<JobBean> jb=JobSeekerRegDAO.selectJobSeeker(jobBean);

for(JobBean eb:jb){
	username=eb.getUserName();
	password=eb.getUserPassword();
	id=eb.getUid();
	fname=eb.getUserFname();
	lname=eb.getUserLname();
}
String fullName=fname.concat(" "+lname);
session.setAttribute("u_id",id);
session.setAttribute("fname", fullName);
//out.println("id="+id);
//out.println("username="+username);
//out.println("password="+password);



if(username.equals(seekerUsername)){
	if(!password.equals(seekerPassword)){
		%>
<script>
		alert("invalid password");
		</script>
<%
	}
	else{
		response.sendRedirect("UserSelectionLink.jsp");
	}
}
else{
	out.println("new user");
}




%>