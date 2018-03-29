<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String[] cities = { "mumbai", "singapore", "philadelphia" };
	pageContext.setAttribute("mycities", cities);
%>

<html>
<body>

	<c:forEach var="tempcity" items="${mycities}">
	${tempcity }  <br>
	</c:forEach>

</body>

</html>
