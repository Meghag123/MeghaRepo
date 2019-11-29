<%-- 
    Document   : View Candidate
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
	String uname = request.getParameter("uname");

	jobBean.setFirName(uname);

	ArrayList<JobBean> fb = JobProviderDAO.viewAppliedUserProfile(jobBean);

	int size = 0;
	size = fb.size();
	if (size == 0) {
%>
<h3 align="center">NO DATA TO SHOWN</h3>
<%
	} else {
		int i = 0;

		for (JobBean it : fb) {
%>

<body class="text" background="images/bg_1.jpg">

	<table>

		<tr>
			<td><img src="image/<%=it.getImage()%>" width="115" height="128" /><br>
				<br> </b>
		</tr>

		<tr>
			<td style="font-family: TimesNewRoman;">Candidate Name</td>
			<td><b> <%
 	out.println(it.getUserFname());
 %><br> <br>
			</b>
		</tr>

		<tr>
			<td style="font-family: TimesNewRoman;">Gender</td>
			<td><b> <%
 	out.println(it.getUserGender());
 %><br> <br>
			</b>
		<tr>
			<td style="font-family: TimesNewRoman;">Date of Birth</td>
			<td><b> <%
 	out.println(it.getUserDob());
 %><br> <br>
			</b>
		<tr>
			<td style="font-family: TimesNewRoman;">Email id</td>
			<td><b> <%
 	out.println(it.getUserEmail());
 %><br> <br>
			</b></td>
		</tr>


		<tr>
			<td style="font-family: TimesNewRoman;">Phone no</td>
			<td><b> <%
 	out.println(it.getUserPhone());
 %><br> <br>
			</b></td>
		</tr>

		<tr>
			<td style="font-family: TimesNewRoman;">Qualification</td>
			<td><b> <%
 	out.println(it.getQualification());
 %><br> <br>
			</b></td>
		</tr>

		<tr>
			<td style="font-family: TimesNewRoman;">Applied Post</td>
			<td><b> <%
 	out.println(it.getPost());
 %><br> <br>
			</b></td>
		</tr>

		<tr>
			<td style="font-family: TimesNewRoman;">Experience</td>
			<td><b> <%
 	out.println(it.getExperience());
 %><br> <br>
			</b></td>
		</tr>

	</table>

	<button>
		<a href="ViewfeedbackActionAdmin.jsp?uname=<%=it.getUserFname()%>">View
			Feedback</a>
	</button>
	<button>
		<a href="CandidateListAdmin.jsp">Back</a>
	</button>

	<%
		}

		}
	%>


</body>
