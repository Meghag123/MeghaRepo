<%-- 
    Document   : View Description company
    Created on : 18-11-2019
    Author     : Tune4Jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.mvc.crud.dao.JobProviderDAO" %>
<%@ page import="com.mvc.crud.beans.JobBean" %>
<%@ page import="java.util.ArrayList" %>

<html>
<head>
<title></title>
</head>

      <body class="text" background="images/bg_1.jpg">
<%
session=request.getSession(false);
String company=(String)session.getAttribute("company");
JobBean jobBean=new JobBean();
jobBean.setCompname(company);
ArrayList<JobBean> eb=JobProviderDAO.viewDescription(jobBean);
System.out.println("the company nam="+company);



 		int size=0;
 		size=eb.size();
      if(size==0){%>

    	  <h3 align="center">NO DATA TO SHOWN</h3>
      <% }else{

     
 		int i=0;
      
 			for(JobBean it:eb){
 				
 				
 			%>	
 			<style>
 			.text{
 		background-colour:green;
 			
 			}
 			</style>			
 			
 			
 				<h1 style="font-family:verdana;" > Company name</h1><br>
 				<h3><b><% out.println(it.getCompname());%><br><br></b></h3>
 				
 				<h1 style="font-family:verdana;" > Job Description</h1><br>
 				<h3><% out.println(it.getCompdes());%><br><br></b></h3>
 				
 				
 				
 				
 			<h1 style="font-family:verdana;"> Job Vacancy</h1><br>
 		<h3><% 	out.println(it.getCompvac());%><br><br></h3>
 			
 			<h1 style="font-family:verdana;">Job Role</h1><br>
 				<h3><% out.println(it.getComprole());%>
 				
 				<h1 style="font-family:verdana;"> Company Post</h1><br>
 				<h3><% out.println(it.getComppost());

 			}
 			
 		}
  
      %></h3>   
 <a href="editComp.jsp"><h2>EDIT COMPANY DETAILS</h2></a><br><br><br>
  <a href="home.html"><h2>GO Back</h2></a><br><br><br>
 
</body>

</html>
