<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AccessDenied page</title>
</head>
<body>
	<h1>ACCESS DENIED</h1>
	<strong>${msg}</strong>
	<ul>
		<li><a href="${pageContext.request.contextPath}/">Index</a></li>
		<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
	</ul>
</body>
</html>