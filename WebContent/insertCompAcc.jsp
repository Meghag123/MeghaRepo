<%-- 
    Document   : insert company
    Created on : 13-11-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.mvc.crud.beans.JobBean"%>
<%@page import="com.mvc.crud.dao.JobProviderDAO"%>

<%
   String compname=(String)request.getParameter("comp");
    String compdes=request.getParameter("compdes");
    //String compid=request.getParameter("compid");
    String compvac=request.getParameter("compvac");
    String comprole=request.getParameter("comprole");
    String comppost=request.getParameter("comppost");
    
   // Probean probean=new Probean();
   JobBean jobBean=new JobBean();
   jobBean.setCompname(compname);
   jobBean.setCompdes(compdes);
   //jobBean.setCompid(compid);
   jobBean.setCompvac(compvac);
   jobBean.setComprole(comprole);
   jobBean.setComppost(comppost);
   
   
   session.setAttribute("company",compname);
    
    //enqiry bean for getter setter funtions
    //since in EnquiryDAO, we have many methods.In the object enquiryBean we have the valuses in ename and number.
    //we are inserting that values to the method in EnquiryDao insert,if sucess ,sucess page.
    //<%@page import="com.mvc.pro.bean.Probean"%page import="com.mvc.pro.dao.ProDAO" 

    
    boolean flag=JobProviderDAO.insertDescription(jobBean);
    		
    if(flag==true){
        
       // response.sendRedirect("success.html");
    	response.sendRedirect("viewDescription.jsp");
    }
    else{
      
       out.println("error");
       }
    
   
   
    %>

