<%-- 
    Document   : Candidate List view
    Created on :14-09-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		session = request.getSession();
		String Fname = null;
		JobBean jobBean = new JobBean();
		ArrayList<JobBean> fb = JobProviderDAO.ViewCandidateList(jobBean);

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

		<tr>
			<td align="center">Sl.No</td>

			<td align="center">Name</td>

			<td align="center">Action</td>


		</tr>
		<%
			int i = 0;

				for (JobBean it : fb) {
					i++;
					Fname = it.getUserFname();
		%>


		<tr>
			<%--<td width="12" height="20" align="center"><span style="font-size: 14"><%=i+1 %></span></td>--%>
			<td width="43" align="center"><div align="center">
					<span style="font-size: 14"><%=i%> </span>
				</div></td>
			<td width="43" align="center"><div align="center">
					<span style="font-size: 14"><%=it.getUserFname()%></span>
				</div></td>

			<td width="43" align="center"><div align="center">
					<span style="font-size: 14"><a
						href="ViewCandidateAdmin.jsp?uname=<%=it.getUserFname()%>">View
							Profile</a></span>
				</div>
		</tr>

		<%
			}
			}
			session.setAttribute("uname", Fname);
		%>

	</table>
	<center>
		<a href="AdminAction.jsp">GO Back</a>
	</center>
</body>
</html>