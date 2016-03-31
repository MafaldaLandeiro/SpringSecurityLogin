<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome page</title>
</head>
<body>
	<h1>Greeting : ${greeting}</h1>
	<ul>
		<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
		<li><a href="${pageContext.request.contextPath}/admin">Admin</a></li>
		<li><a href="${pageContext.request.contextPath}/db">DB</a></li>
	</ul>
</body>
</html>