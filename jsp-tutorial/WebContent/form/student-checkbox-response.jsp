<html>

<head><title>Student Confirmation Title</title></head>

<body>

      <ul>
         <li><p><b>First Name:</b>
            <%= request.getParameter("firstName") %>
         </p></li>
         <li><p><b>Last  Name:</b>
            <%= request.getParameter("lastName") %>
         </p></li>
      </ul>	

	Favorite Programming Languages: <br/>
	
	<!-- display list of "favoriteLanguage" -->	
	<ul>
		<%
			String[] langs = request.getParameterValues("favoriteLanguage");
		
			for (String tempLang : langs) {
				out.println("<li>" + tempLang + "</li>");
			}
		%>
	</ul>
</body>
</html>










