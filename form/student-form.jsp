<html>
<title>form- jsp</title>

<body>

	The name is :
	<%=request.getParameter("firstName")%>
	<%=request.getParameter("lastName")%>
	<br><br>
	<%= request.getParameter("country") %>
	<br><br>
	The favorite language is :
	<%= request.getParameter("favoritelanguage") %>
	<br><br>
	
	The checkbox result :
	<ul>
		<%
	  String[] langs = request.getParameterValues("favoritelan");
	
	  for(String templang : langs)
	  {
		  out.println("<li>"+ templang + "</li>");
	  }
	%>
	
	</ul>


</body>
</html>