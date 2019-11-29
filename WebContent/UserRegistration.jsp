<!-- 
    Document   : user Registraion
    Created on : 12/11/209
    Author     : Tune4Jobs
 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tune4Jobs</title>
<link rel="stylesheet" type="text/css" href="CSS/userRegStyle.css">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css" integrity="sha384-SI27wrMjH3ZZ89r4o+fGIJtnzkAnFs3E4qz9DIYioCQ5l9Rd/7UAa8DHcaL8jkWt" crossorigin="anonymous">
<script  src="jscript/Validation.js"></script>
</head>
<body class="body" background="images/bg_1.jpg">
		<div class="container-fluid" style="margin-left:380px">
		<h1 style="margin-left:200px">USER REGISTRATION</h1><br>
		<form name="userSignup" action="userRegInsertAction.jsp">
			<div class="form-group" >
		    <label for="exampleInputName"><b>First Name</b></label>
		    <input type="text" class="form-control" name="userFname" required placeholder="First Name" style="width:50%">
		    
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1"><b>Last Name</b></label>
		    <input type="text" class="form-control" name="userLname" required placeholder="Last Name" style="width:50%">
		  </div>
		  <label for="exampleInputPassword1"><b>Gender</b></label>
		  <div class="form-check">
		  
		  <input class="form-check-input" type="radio" name="userGender" value="Male" >
		  <label class="form-check-label" for="exampleRadios1">
		    Male
		  </label>
		</div>
		<div class="form-check">
		  <input class="form-check-input" type="radio" name="userGender" value="Female">
		  <label class="form-check-label" for="exampleRadios2">
		    Female
		  </label>
		</div>
		  <div class="form-group">
		    <label for="exampleInputPassword1"><b>Date Of Birth</b></label>
		    <input type="text" class="form-control"  name="userDob"   required placeholder="Date Of Birth" style="width:50%">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1"><b>Address</b></label>
		    <input type="text" class="form-control" name="userAddress" required placeholder="Address" style="width:50%">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1"><b>Phone No.</b></label>
		    <input type="number" class="form-control" name="userPhone" required placeholder="Phone No." style="width:50%">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1"><b>Alternative Phone No.</b></label>
		    <input type="number" class="form-control" name="userAltPhone" required placeholder="Alternative Phone No." style="width:50%">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1"><b>Email</b></label>
		    <input type="email" class="form-control" name="userEmail" required placeholder="Email" style="width:50%">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1"><b>Username</b></label>
		    <input type="text" class="form-control" name="userName" required placeholder="Username" style="width:50%">
		  </div>
		   <div class="form-group">
		    <label for="exampleInputPassword1"><b>Password</b></label>
		    <input type="password" class="form-control" name="userPassword" required placeholder="Password" style="width:50%">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1"><b>Confirm Password</b></label>
		    <input type="password" class="form-control" name="ConPassword" required placeholder="Confirm Password" style="width:50%">
		  </div>
		 
		  <button type="submit" class="btn btn-primary"  onclick="return validate()" style="margin-left:400px">REGISTER</button>
		
		
		
		</form>
		</div>
	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js" integrity="sha384-3qaqj0lc6sV/qpzrc1N5DC6i1VRn/HyX4qdPaiEFbn54VjQBEU341pvjz7Dv3n6P" crossorigin="anonymous"></script>
</body>
</html>