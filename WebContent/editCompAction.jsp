<%-- 
    Document   : edit company
    Created on : 16-11-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.mvc.crud.beans.JobBean"%>
<%@page import="com.mvc.crud.dao.JobProviderDAO"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



	<%
String compname=(String)request.getParameter("compname");
String compdes=request.getParameter("compdes");
//String compid=request.getParameter("compid");
String compvac=request.getParameter("compvac");
String comprole=request.getParameter("comprole");

   // Probean probean=new Probean();
   JobBean jobBean=new JobBean();
   jobBean.setCompname(compname);
   jobBean.setCompdes(compdes);
  // jobBean.setCompid(compid);
   jobBean.setCompvac(compvac);
   jobBean.setComprole(comprole);
   
   
   //session.setAttribute("company",compname);
    
    //enqiry bean for getter setter funtions
    //since in EnquiryDAO, we have many methods.In the object enquiryBean we have the valuses in ename and number.
    //we are inserting that values to the method in EnquiryDao insert,if sucess ,sucess page.
    //<%@page import="com.mvc.pro.bean.Probean"%page import="com.mvc.pro.dao.ProDAO" 

    
    boolean flag=JobProviderDAO.updateJobProvider(jobBean);
    		
    if(flag==true){
        
       // response.sendRedirect("success.html");
    	response.sendRedirect("viewDescription.jsp");
    }
    else{
      
      out.println("error");
    }
    
   
   
    %>
</body>
</html>