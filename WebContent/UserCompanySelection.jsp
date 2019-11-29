<%-- 
    Document   : User company selection
    Created on : 18-11-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.mvc.crud.dao.JobProviderDAO"%>
<%@ page import="com.mvc.crud.dao.JobSeekerRegDAO"%>
<%@ page import="com.mvc.crud.dao.ViewDAO"%>
<%@ page import="com.mvc.crud.beans.JobBean"%>
<%@ page import="java.util.ArrayList"%>

<html>
<head>
<title>Tune4Jobs</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body background="images/bg_1.jpg">
	<%
session=request.getSession(false);
String uid=(String)session.getAttribute("u_id");
String post=null;
String comp=null;

JobBean jobBean=new JobBean();
jobBean.setUid(uid);
ArrayList<JobBean> kb=ViewDAO.viewCandidatePost(jobBean);

System.out.println("session id="+uid);
for(JobBean eb:kb){
	post=eb.getPost();
}

session=request.getSession();
System.out.println("session post="+post);
session.setAttribute("post",post);

jobBean.setPost(post);

ArrayList<JobBean> jb=ViewDAO.viewCompanyProfile(jobBean);
for(JobBean eb:jb){
	 comp=eb.getCompname();
	System.out.println("company name in the loop "+comp); 

	
	session.setAttribute("company",comp);
	System.out.println("company go "+comp); 
	jobBean.setCompname(comp);
	
}

%>




	<% 

 		int size=0;
 		size=jb.size();
      if(size==0){%>
	<h3 align="center">NO DATA TO SHOWN</h3>
	<% }else{
      
    	//out.println(getCompdes());

	

     
 		int i=0;
      
 			for(JobBean it:jb){
 				
 				
 			%>
	<style>
.table {
	font-size: 20px;
}
</style>




	<center>
		<h2>Company Lists</h2>
	</center>

	<table class="table table-striped table-dark"
		style="width: 50%; margin: 50px auto">


		<tr>
			<td><b>
					<% out.println(it.getCompname());%>
			</b><br>
			<td>&nbsp&nbsp&nbsp&nbsp&nbsp<a
				href="UserApplyCompany.jsp?com=<%=it.getCompname() %>">View
					Company Details</a><br>
	</table>
	<% 

 			} 			
  %>

	<a href="UserSelectionLink.jsp">Go Back</a>

</body>
</html>
<%
}
%>


