<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<meta name="robots" content="noindex, nofollow">
<!-- Include CSS File Here -->
<link rel="stylesheet" href="css/style.css" />
<!-- Include CSS File Here -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>
</head>
<body>
	<div class="container">
		<div class="main">
			<form action="Register" class="form" method="post" action="#">
				<label>Name :</label> <input type="text" name="name" id="name">
				<label>Email-id :</label> <input type="text" name="emailid"
					id="emailid"> <label>Contact :</label> <input type="text"
					name="emailid" id="emailid"> <label>Address :</label> <input
					type="text" name="addr" id="addr"> <input type="submit"
					name="login" id="login" value="Login">
			</form>
		</div>
	</div>
</body>
</html>