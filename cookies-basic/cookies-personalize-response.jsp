<html>
<title>personalize response-jsp</title>


<body>
<%
	//read from data
	String favlang = request.getParameter("favoritelang");


	//create the cookie
	Cookie theCookie = new Cookie("myApp.favoritelang",favlang);
	
	//set life cpan for cookie 
	
	theCookie.setMaxAge(60*60*24);
			
	//send cookie to browser
	response.addCookie(theCookie);
			
%>

<br>
	your fav lang : <%= request.getParameter("favoritelang") %> is NOW  cookie.
	
	<br>
	<a href="cookies-hompage.jsp"> Return to home page </a>

</body>


</html>