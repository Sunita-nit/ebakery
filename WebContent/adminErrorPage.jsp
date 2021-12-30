<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin error page</title>
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
	border-style:dotted ;
	border-width: thick;
	background-color: white;
	height:400px;
}
legend{
	font-weight: bolder;
	font-size: 30px;
}


</style>
</head>
<body>
<center>
<div style="margin-top:8%;">
<fieldset style="color:red"><legend>ERROR</legend>
	<h2>Incorrect login id or password</h2>
	<br><h3>Or You Are Not An Admin</h3>
	<br><h3>Please login again</h3>
	<a href="admin
	_login.jsp"><h2>Login</h2></a>
</fieldset>
</div>
</center>
</body>
</html>