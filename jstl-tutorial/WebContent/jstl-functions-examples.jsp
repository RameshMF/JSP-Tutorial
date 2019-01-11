<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>JSTL fn:contains() function example</h1>
	<c:set var="str1" value="Java Guides" />
	<c:set var="str2" value="Guides" />
	<c:if test="${fn:contains(str1, str2)}">

		<c:out value="'Guides' substring present in 'Java Guides' string" />
	</c:if>
	<hr>

	<h1>JSTL fn:containsIgnoreCase() function example</h1>
	<c:set var="str1" value="Java Guides" />
	<c:set var="str2" value="java guides" />
	<c:if test="${fn:containsIgnoreCase(str1, str2)}">

		<c:out value="'java guides' substring present in 'Java Guides' string" />
	</c:if>
	<hr>

	<h1>JSTL fn:indexOf() function example</h1>
	<c:set var="str1" value="Java Guides" />
	<c:set var="str2" value="Guides" />
	<p>Index of "Guides" in "Java Guides" : ${fn:indexOf(str1, str2)}</p>
	<hr>

	<h1>JSTL fn:join() function example</h1>
	<%
		String arr[] = { "Java", "Programming", "Language" };
		session.setAttribute("names", arr);
	%>
	${fn:join(names, " & ")}

	<hr>
	<h1>JSTL fn:split() function example</h1>
	<c:set var="msg" value="This is an example of JSTL function" />
	<c:set var="arrayofmsg" value="${fn:split(msg,' ')}" />
	<c:forEach var="i" begin="0" end="6">
	 arrayofmsg[${i}]: ${arrayofmsg[i]}<br>
	</c:forEach>

	<hr>
	<h1>JSTL fn:length() function example</h1>
	<c:set var="str" value="Java Guides" />
	Length of str is: ${fn:length(str)}
	<br>

	<hr>
	<h1>JSTL fn:trim() function example</h1>
	<c:set var="str" value="  Java Guides  " />
	Trim of " Java Guides " is: ${fn:trim(str)}
	<br>

	<hr>
	<h1>JSTL fn:startsWith() function example</h1>
	<c:set var="str" value="Java Guides" />
	Java Guides starts with Java : ${fn:startsWith(str, 'Java')}
	<br>

	<hr>
	<h1>JSTL fn:endsWith() function example</h1>
	<c:set var="str" value="Java Guides" />
	Java Guides ends with Guides : ${fn:endsWith(str, 'Guides')}
	<br>

	<hr>
	<h1>JSTL fn:substring() function example</h1>
	<c:set var="str" value="Java Guides" />
	${fn:substring(msg, 5, 10)}
	<br>

	<hr>
	<h1>JSTL fn:substringAfter() function example</h1>
	<c:set var="str" value="Java Guides" />
	${fn:substringAfter(str, "Gu")}
	<br>

	<hr>
	<h1>JSTL fn:substringBefore() function example</h1>
	<c:set var="str" value="Java Guides" />
	${fn:substringBefore(str, "Gu")}
	<br>


	<hr>
	<h1>JSTL fn:toUpperCase() function example</h1>
	<c:set var="str" value="java guides" />
	Upper case of "java guides" is: ${fn:toUpperCase(str)}
	<br>

	<hr>
	<h1>JSTL fn:toLowerCase() function example</h1>
	<c:set var="str" value="JAVA GUIDES" />
	Lower case of "JAVA GUIDES" is: ${fn:toLowerCase(str)}
	<br>

	<hr>
	<c:set var="author" value="Ramesh Fadatare" />
	<c:set var="randomstring" value="abc def abc ghi ABC" />
	${fn:replace(author, "Ramesh", "Umesh")} 
	${fn:replace(randomstring, "abc", "hello")}

</body>
</html>