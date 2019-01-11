<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="student" class="net.javaguides.jsp.tutorial.Student"></jsp:useBean>
	<jsp:setProperty property="*" name="student" />
	<h1>Student Registered with Following Details</h1>
	<b>First Name:</b> <jsp:getProperty property="firstName" name="student" /><br><br>
	<b>Last Name:</b> <jsp:getProperty property="lastName" name="student" /><br><br>
	<b>Email ID:</b><jsp:getProperty property="emailId" name="student" /><br><br>
	<b>Password:</b> <jsp:getProperty property="password" name="student" />
</body>
</html>