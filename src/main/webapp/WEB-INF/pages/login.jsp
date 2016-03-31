<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
</head>

<body>
	<h1>LOGIN</h1>
	<div>
		<c:url var="loginUrl" value="/login" />
		<form action="${loginUrl}" method="post">
			<c:if test="${param.error != null}">
				<div style="color: red;">
					<p>${error}</p>
				</div>
			</c:if>
			<c:if test="${param.logout != null}">
				<div>
					<p>${msg}</p>
				</div>
			</c:if>
			<div>
				<input type="text" id="username" name="ssoId"
					placeholder="Please enter your username" required>
			</div>
			<div>
				<input type="password" id="password" name="password"
					placeholder="Please enter your password" required>
			</div>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

			<div class="form-actions">
				<input type="submit" value="Log in">
			</div>
			<a href="<c:url value="/" />">Index</a>
		</form>
	</div>

</body>
</html>