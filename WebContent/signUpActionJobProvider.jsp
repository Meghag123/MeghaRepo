<%-- 
    Document   : Sign up provider
    Created on : 17-11-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.mvc.crud.dao.JobProviderDAO"%>
<%@ page import="com.mvc.crud.beans.JobBean"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.*"%>
<%
  String rname=null;
  JobBean jobBean=new JobBean();
  	String cname=request.getParameter("r_company_name");
  	String email=request.getParameter("r_email");
  	String num=request.getParameter("r_phone");
  	//int num=Integer.parseInt(request.getParameter("num"));
  	String address=request.getParameter("r_company_address");
  	String location=request.getParameter("r_location");
  	String uname=request.getParameter("r_username");
  	String pass=request.getParameter("r_password");
  	
    ArrayList<JobBean> jb=JobProviderDAO. checkProviderName() ;
    
	  for(JobBean it:jb){	
		  rname=it.getR_username();
		  //size=ub.size();
	  }
	 // out.print(rname);
	  
	   if(uname.equals(rname)){
		  out.print("Username already exist!");%>
<!--  request.getRequestDispatcher("signUp.html").include(request, response);-->
<a href="indexJobProvider.jsp">Home</a>
<%
	  }
	  
	  else{
	  
	
	jobBean.setR_username(uname);
	jobBean.setR_password(pass);
	jobBean.setR_company_address(cname);
	jobBean.setR_company_name(cname);
	jobBean.setR_location(location);
	jobBean.setEmail(email);
	jobBean.setR_phone(num);
    boolean flag=JobProviderDAO.signUpProvider(jobBean);
    if(flag==true){
        
        response.sendRedirect("insertComp.html");
    }
    else{
      
       response.sendRedirect("error.html");
    
	  }
	  } 
    %>