<%@page import="com.bo.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login success</title>
</head>
<body>
	<div>
	<h1>Successfully Login</h1><br>
	<hr>
		
	 <% User currentSessionUser = (User)(session.getAttribute("currentUser"));%>
			
      <h2>Welcome
      	<%=currentSessionUser.getName()%>
	</h2>
	<br>
	<a href="LogoutServlet">Logout</a>

</div>
</body>
</html>