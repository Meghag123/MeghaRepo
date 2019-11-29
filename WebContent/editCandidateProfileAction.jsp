<%-- 
    Document   : edit Candidate
    Created on : 13-11-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.mvc.crud.dao.JobProviderDAO"%>
<%@ page import="com.mvc.crud.dao.JobSeekerRegDAO"%>
<%@ page import="com.mvc.crud.dao.insertQualification"%>
<%@ page import="com.mvc.crud.beans.JobBean"%>
<%@ page import="java.util.ArrayList"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tune4Jobs</title>
</head>
<body>



	<%

session=request.getSession(false);
String qualification=(String)request.getParameter("qualification");
String language=request.getParameter("language");
String id = (String) session.getAttribute("u_id");
String experience=request.getParameter("experience");


   // Probean probean=new Probean();
   JobBean jobBean=new JobBean();
   jobBean.setQualification(qualification);
   jobBean.setLanguage(language);
   jobBean.setUid(id);
   jobBean.setExperience(experience);

   
   //session.setAttribute("company",compname);
    
    //enqiry bean for getter setter funtions
    //since in EnquiryDAO, we have many methods.In the object enquiryBean we have the valuses in ename and number.
    //we are inserting that values to the method in EnquiryDao insert,if sucess ,sucess page.
    //<%@page import="com.mvc.pro.bean.Probean"%page import="com.mvc.pro.dao.ProDAO" 

    
    boolean flag=insertQualification.updateCandidateProfile(jobBean);
    		
    if(flag==true){
        
        response.sendRedirect("success.jsp");
    	//response.sendRedirect("ViewCandidateProfile.jsp");
    }
    else{
      
       response.sendRedirect("error.html");
    }
    
   
   
    %>
</body>
</html>