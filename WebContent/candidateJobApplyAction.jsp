<%-- 
    Document   : Candidate apply
    Created on :14-09-2019
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
<%
String userFname=null;
String userLname=null;
String userEmail=null;
String userPhone=null;
String userFullname=null;
String candidEmail=null;
session=request.getSession(false);
String id=(String) session.getAttribute("u_id");

String fname=(String) session.getAttribute("fname");
JobBean jobBeans=new JobBean();
jobBeans.setUserFullname(fname);
System.out.println("Firstethe name="+fname);
ArrayList<JobBean> ub=JobProviderDAO.viewAppliedEmail(jobBeans);
for(JobBean eb:ub){
	candidEmail=eb.getC_email();
}
System.out.println("Candidate email="+candidEmail);


String company=(String)session.getAttribute("company");
String post=(String)session.getAttribute("post");
String username=(String)session.getAttribute("username");

JobBean jobbean=new JobBean();

jobbean.setCompname(company);
//System.out.println("the getted posssst name="+post);
//System.out.println("the getted userrrr name="+username);

jobbean.setUserName(username);
jobbean.setPost(post);

ArrayList<JobBean> jb=JobSeekerRegDAO.selectJobSeekerDetailsApply(jobbean);
for(JobBean eb:jb){
	userFname=eb.getUserFname();
	userLname=eb.getUserLname();
	userEmail=eb.getUserEmail();
	userPhone=eb.getUserPhone();
	userFullname=userFname.concat(" "+userLname);

}
jobbean.setUserFullname(userFullname);
jobbean.setUserEmail(userEmail);
jobbean.setUserPhone(userPhone);





boolean flag=JobSeekerRegDAO.insertAppliedCandidate(jobbean);


if(flag==true){
	response.sendRedirect("success.jsp");
}


%>