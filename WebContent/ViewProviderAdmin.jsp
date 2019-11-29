<%-- 
    Document   : View Provider Admin
    Created on : 18-11-2019
    Author     : Tune4Jobs
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mvc.crud.beans.JobBean"%>
<%@ page import="com.mvc.crud.dao.*"%>

<%
	JobBean jobBean = new JobBean();
	String compname = request.getParameter("compname");

	jobBean.setCompname(compname);
	System.out.println("the company name in action" + compname);

	ArrayList<JobBean> fb = JobProviderDAO.viewDescription(jobBean);
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

<body class="text" background="images/bg_1.jpg">
	<nav align="right">
		<a href="home.html">GO Back</a>
	</nav>
	<table>



		<tr>
			<td style="font-family: TimesNewRoman;">company Name</td>
			<td><b> <%
 	out.println(it.getCompname());
 %><br> <br>
			</b>
		</tr>

		<tr>
			<td style="font-family: TimesNewRoman;">Company Designation</td>
			<td><b> <%
 	out.println(it.getCompdes());
 %><br> <br>
			</b>
		<tr>
			<td style="font-family: TimesNewRoman;">Company Vacancy</td>
			<td><b> <%
 	out.println(it.getCompvac());
 %><br> <br>
			</b>
		<tr>
			<td style="font-family: TimesNewRoman;">Company Role</td>
			<td><b> <%
 	out.println(it.getComprole());
 %><br> <br>
			</b></td>
		</tr>

		<tr>
			<td style="font-family: TimesNewRoman;">Company Post</td>
			<td><b> <%
 	out.println(it.getComppost());
 %><br> <br>
			</b></td>
		</tr>


	</table>


	<button>
		<a href="CompanyListAdmin.jsp">Back</a>
	</button>

	<%
		}

		}
	%>


</body>
