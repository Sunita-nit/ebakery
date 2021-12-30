<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>error page</title>
<style>
body{
	background:url("images/bg_1.jpg");
	background-repeat: no-repeat;
	background-position: top;
	background-size:cover;
	opactiy:1%; 
}
fieldset{
	width:600px;
	border-color: red;
	border-style: dashed;
}
legend{
	font-weight: bolder;
	font-size: 30px;
}
</style>
</head>
<body >

<div style="margin-top:6%;">
	<center>
	<fieldset style="color:red;background-color:white;" ><legend>ERROR</legend>
	
	<h2>Incorrect login id or password</h2>
	<br><h3>Please login again</h3>
	<br><a href="login.jsp"><h3>Login</h3></a><br><br>	
	<pre><h2><b>New User?Please SignUp First </b></h2>	<a href="register.jsp"><h3>SignUp</h3></a>
	</pre>
	</fieldset>
	</center>
</div>
</body>
</html>