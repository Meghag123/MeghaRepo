<%-- 
    Document   : insert qualification
    Created on : 15-11-2019
    Author     : Tune4Jobs
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css"></style>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css"
	integrity="sha384-SI27wrMjH3ZZ89r4o+fGIJtnzkAnFs3E4qz9DIYioCQ5l9Rd/7UAa8DHcaL8jkWt"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body background="images/bg_1.jpg">
	<h1>Qualification Details</h1>
	<br>
	<form action="qualAction.jsp" enctype="multipart/form-data"
		method="post">
		<div class="form-group">
			<label for="exampleFormControlSelect1"><b>Qualification</b></label> <select
				class="form-control" id="exampleFormControlSelect1"
				name="qualification" style="width: 50%">
				<option>Choose...</option>
				<option value="SSLC">SSLC</option>
				<option value="plustwo">plustwo</option>
				<option value="degree/diploma">DIPLOMA IN ELECTRICAL/ITI</option>
				<option value="hotel management">HOTEL MANAGEMENT</option>
			</select>
		</div>

		<div class="form-group">
			<label for="exampleInputPassword1"><b>Stream/board</b></label> <select
				class="form-control" id="exampleFormControlSelect1" name="stream" style="width: 50%">
				<option>Choose...</option>
				<option value="state">State</option>
				<option value="cbse">CBSE</option>
				<option value="other">Other</option>
			</select>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1"><b>Experience</b></label> <input
				type="text" class="form-control" name="experience" required
				placeholder="Experience" style="width: 50%">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1"><b>Language</b></label> <input
				type="text" class="form-control" name="language" required
				placeholder="Language" style="width: 50%">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1"><b>Additional Skills</b></label> <input
				type="text" class="form-control" name="additionalskills" required
				placeholder="Additional Skills" style="width: 50%">
		</div>

		<div class="form-group">
			<label for="exampleInputPassword1"><b>Stream/board</b></label> <select
				class="form-control" id="exampleFormControlSelect1" name="stream" style="width: 50%">
				<option>Select...</option>
				<option value="carpentry">Carpentry</option>
				<option value="Cook">Cook</option>
				<option value="Driver">Driver</option>
				<option value="Electrician">Electrician</option>
			</select>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1"><b>Photo</b></label> <input
				type="file" class="form-control" name="file" required
				style="width: 15%" size="50">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1"><b>Declaration</b></label> <br>
				<input type="checkbox"><b>I hereby declare that the
			above given details are true to my knowledge and belief</b>
				
		</div>
		<button type="submit" class="btn btn-primary"
			onclick="return validate()" style="margin-left: 400px">REGISTER</button>
















	</form>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js"
		integrity="sha384-3qaqj0lc6sV/qpzrc1N5DC6i1VRn/HyX4qdPaiEFbn54VjQBEU341pvjz7Dv3n6P"
		crossorigin="anonymous"></script>
</body>
</html>