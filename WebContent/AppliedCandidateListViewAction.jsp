<%-- 
    Document   : Applied candidate List
    Created on :14-09-2019
    Author     : Tune4jobs
--%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*"%>
<%@ page import="com.mvc.crud.beans.JobBean"%>
<%@ page import="com.mvc.crud.dao.*"%>


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
		session = request.getSession(false);
		String compname = (String) session.getAttribute("compname");
		JobBean jobBean = new JobBean();
		//String name = (String) session.getAttribute("name");
		System.out.println("username=" + compname);

		jobBean.setC_company_name(compname);

		ArrayList<JobBean> fb = JobProviderDAO.viewAppliedCandidateList(jobBean);

		int size = 0;
		size = fb.size();
		if (size == 0) {
	%>
	<h3 align="center">NO DATA TO SHOWN</h3>
	<%
		} else {
	%>


	<table class="table table-striped table-dark"
		style="width: 50%; margin: 50px auto">

		<center>
			<h1>Applied Candidate List</h1>
		</center>

		<tr>
			<h1>
				<td align="center">Sl.No</td>
			</h1>

			<h1>
				<td align="center">Name</td>
			</h1>

			<h1>
				<td align="center">View Profile</td>
			</h1>




		</tr>
		<%
			int i = 0;

				for (JobBean it : fb) {

					i++;
					String fullname = it.getC_name();
					String[] fname = fullname.split("\\s");
					System.out.println(fname[0]);
					String firstName = fname[0];
		%>


		<tr>
			<%--<td width="12" height="20" align="center"><span style="font-size: 14"><%=i+1 %></span></td>--%>
			<td width="43" align="center"><div align="center">
					<span style="font-size: 14"><%=i%> </span>
				</div></td>
			<td width="43" align="center"><div align="center">
					<span style="font-size: 14"><%=firstName%></span>
				</div></td>
			<td width="43" align="center"><div align="center">
					<span style="font-size: 14"><a
						href='viewCandidateProfileProvider.jsp?c_name=<%=firstName%>'>View
							Profile</a></span>
				</div> <%
 	}
 	}
 %>
	</table>
	<center>
		<a class="edit" href="UserSelectionLink.jsp"><h3>
				Go Back
				</h2></a>
	</center>
</body>