<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<body>
	<c:set var="data" value="dhaka,comilla,sylhet,khulna" />

	<c:set var="citiesarray" value="${fn:split(data,',') }" />

	<b> Split example : </b>

	<c:forEach var="temp" items="${citiesarray }">

		<br> ${temp } 

	</c:forEach>

	<h3>Join demo :</h3>
	<c:forEach var="Join" items="${fn:join(citiesarray,'*') }">

	The result of joining is : <b>${Join }</b>
	</c:forEach>

</body>
</html>