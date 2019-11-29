<%-- 
    Document   : insert compay Action
    Created on : 15-11-2019
    Author     : Tune4jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h3>
		<%
			//get other details such as recruiter name , phonumber etc here enter the description.

			String compname = request.getParameter("compname");
			out.println("WELCOME  " + compname + "   ADD DESCRIPTION HERE..");
		%>
	</h3>
	<style>
.text {
	color: black;
	height: 40px;
}

.texti {
	color: white;
	background-color: green;
	width: 100px;
	height: 40px;
}

.texti:hover {
	background-color: red;
}
</style>
<body background="images/bg_1.jpg">
	<form method="post" action="insertCompAcc.jsp">


		<h1>COMPANY DESCRIPTION</h1>

		<%
			out.println("<input type='hidden' name='comp' value=" + compname + ">");
		%>
		<table>
			<tr>
				<td><b>Company Description </b>
				<td><textarea class="text" rows="4" cols="50" name="compdes"
						placeholder="Enter text here...">
</textarea> <br> <br>
			<tr>
				<td><b>Company Vacancy:</b></td>
				<td><input class="text" type="text" name="compvac" required="" /></td>
				<br>
			</tr>


			<tr>
				<td><b>Job Role:</b></td>
				<td><input class="text" type="text" name="comprole" required="" /></td>
				<br>
			</tr>
			<tr>
				<td><b>Company Post:</b></td>
				<td><input class="text" type="text" name="comppost" required="" /></td>
				<br>
			</tr>


		</table>
		<button class="texti" type="submit">SUBMIT</button>


	</form>

</body>
</html>






