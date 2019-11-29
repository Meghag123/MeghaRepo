<%-- 
    Document   : check user name
    Created on :14-09-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ page import="com.mvc.crud.dao.JobProviderDAO"%>
<%@ page import="com.mvc.crud.beans.JobBean"%>
<%
    
    String name=null;
    String pass=null;
    String companyName=null;
    session=request.getSession(); 
    String uname=request.getParameter("r_username"); 
    String pswd=request.getParameter("r_password"); 
    JobBean jobBean=new JobBean();
    jobBean.setR_username(uname);
    jobBean.setR_password(pswd);
    session.setAttribute("name", uname);
    ResultSet rs=JobProviderDAO.check(jobBean);
    
    
    while(rs.next()){
    	
        name=rs.getString("r_username");
        pass=rs.getString("r_password");
        companyName=rs.getString("r_company_name");
       
    }
	
    session.setAttribute("compname",companyName);

 
  if (uname.equals(name)){
	  if(!pswd.equals(pass)){
		  %>
<script>
		  alert("invalid user");
		  </script>
<% 
		  //out.println("invalid");
	  }
	  else{
		  response.sendRedirect("CompanyDetails.jsp");
	  }
  }

   
    else{
    	 %>
<script>
		  alert("invalid user");
		  </script>
<% 
  	 // response.sendRedirect("index.jsp?val=Invalid username or password");
   }
    
    %>