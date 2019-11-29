
<%-- 
    Document   : User Registration Action
    Created on : 18-11-2019
    Author     : Tune4jobs
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mvc.crud.beans.JobBean"%>
<%@page import="com.mvc.crud.dao.JobSeekerRegDAO"%>
<%@page import="java.util.*"%>

<%



String userFname=request.getParameter("userFname");
String userLname=request.getParameter("userLname");
String userGender=request.getParameter("userGender");
String userDob=request.getParameter("userDob");
String userAddress=request.getParameter("userAddress");
String userPhone=request.getParameter("userPhone");
String userAltPhone=request.getParameter("userAltPhone");
String userEmail=request.getParameter("userEmail");
String userName=request.getParameter("userName");
String userPassword=request.getParameter("userPassword");
String ConPassword=request.getParameter("ConPassword");

JobBean jobBean=new JobBean();
jobBean.setUserFname(userFname);
jobBean.setUserLname(userLname);
jobBean.setUserGender(userGender);
jobBean.setUserDob(userDob);
jobBean.setUserAddress(userAddress);
jobBean.setUserPhone(userPhone);
jobBean.setUserAltPhone(userAltPhone);
jobBean.setUserEmail(userEmail);
jobBean.setUserName(userName);
jobBean.setUserPassword(userPassword);
String id=null;
session=request.getSession();


//if(ConPassword.equals(userPassword)){
boolean flag=JobSeekerRegDAO.insert(jobBean);

ArrayList<JobBean> jb=JobSeekerRegDAO.selectJobSeeker(jobBean);

for(JobBean eb:jb){
	id=eb.getUid();
}


if(flag==true){
	session.setAttribute("u_id",id);
	session.setAttribute("userFname",userFname);
	response.sendRedirect("QualificationDetails.jsp");
}
else{
	out.println("failed");
}


%>