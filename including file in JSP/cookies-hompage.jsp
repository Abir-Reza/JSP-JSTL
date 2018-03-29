<html>
<title>cookie homepage</title>

<body>
<%
	//default value
	String favlang = "java";
	   
	//get from cookie
	Cookie[] theCookies = request.getCookies();
	
	//find fav lang 
	
	if(theCookies != null) {
		for(Cookie tempCookie : theCookies){
			if("myApp.favoritelang".equals(tempCookie.getName())) {
				favlang = tempCookie.getValue();
				break;
			}
		}
	}

%>


<h4>New books for <%= favlang %></h4>

<ul>
	<li>blah blah blah </li>
	<li>blah blah blah </li>
	<li>blah blah blah </li>
	
</ul>

<h4>New JOBS for <%= favlang %></h4>

<ul>
	<li>blah blah blah </li>
	<li>blah blah blah </li>
	<li>blah blah blah </li>
	
</ul>
 <hr>
 <a href="cookies-personalize-form.html">personalize this page </a>

</body>


</html>