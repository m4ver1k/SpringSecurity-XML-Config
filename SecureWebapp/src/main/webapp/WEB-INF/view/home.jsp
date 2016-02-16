<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Secure Web App</title>
</head>
<body>
	<h1>hello- <sec:authentication property="principal.username" /></h1>
	<sec:authorize access="hasRole('ADMIN')">
		Secure content for Admin.<br/>
	</sec:authorize>
		<sec:authorize access="hasRole('USER')">
		Secure content for User.<br/>
	</sec:authorize>
	
	<sec:authorize url="/root">
		Secure content for anyone with access to /root
	</sec:authorize>
</body>
</html>