<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	Converting a string to uppercase:
	<%=new String("Hello World").toUpperCase()%>

    <br />
	<br />
	Port of Server :
	<%= request.getLocalPort() %>
	
	<br />
	<br />
	Context path :
	<%= application.getContextPath() %>
	
	<br />
	<br /> 25 multiplied by 4 equals
	<%=25 * 4%>

	<br />
	<br /> Is 75 less than 69?
	<%=75 < 69%>

</body>
</html>