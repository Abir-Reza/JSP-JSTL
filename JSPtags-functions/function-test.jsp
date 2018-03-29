<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<body>

	<c:set var="data" value="bangladesh" />

	the length of
	<b> ${data }</b> is : ${fn:length(data) }


	<br>
	<br>
	<br> the uppercase of the string
	<b> ${data }</b> is :
	<b> ${fn:toUpperCase(data) }</b>
	<br>
	<br>
	<br> The string starts with ban is :
	<b> ${fn:startsWith(data,"ban") }</b>

</body>
</html>