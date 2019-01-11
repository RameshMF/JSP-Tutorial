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

	<br/> <br/>
	
	The student's favorite programming language: 
	<%= request.getParameter("favoriteLanguage") %>
	
</body>
</html>