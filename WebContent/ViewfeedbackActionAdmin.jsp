<%-- 
    Document   : View Feedback Action
    Created on : 18-11-2019
    Author     : Tune4Jobs
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>
<%@ page import="com.mvc.crud.beans.JobBean"%>
<%@ page import="com.mvc.crud.dao.*"%>

<%
	//session = request.getSession(false);
	String uname=request.getParameter("uname");
	JobBean jobBean = new JobBean();
	//String uname = (String) session.getAttribute("uname");
	jobBean.setUserFname(uname);

	ArrayList<JobBean> fb = JobProviderDAO.ViewFeedbackAdmin(jobBean);

	int size = 0;
	size = fb.size();
	if (size == 0) {
%>
<h3 align="center">NO DATA TO SHOWN</h3>
<%
	} else {

		//out.println(getCompdes());

		int i = 0;

		for (JobBean it : fb) {
%>

<body class="text"  background="images/bg_1.jpg">
	<table>

		<tr>
			<td style="font-family: TimesNewRoman;">Candidate Name</td>
			<td><b> <%
 	out.println(it.getName());
 %><br> <br>
			</b>
		</tr>

		<tr>
			<td style="font-family: TimesNewRoman;">Date</td>
			<td><b> <%
 	out.println(it.getDate());
 %><br> <br>
			</b>
		<tr>
			<td style="font-family: TimesNewRoman;">Feed Back</td>
			<td><b> <%
 	out.println(it.getFeedback());
 %><br> <br>
			</b></td>
		</tr>
	</table>
	<button>
		<a href="CandidateListAdmin.jsp">Go Back</a>
	</button>
	

	<%
		}

		}
	%>


</body>
