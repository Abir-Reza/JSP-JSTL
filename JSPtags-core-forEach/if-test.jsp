<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="java.util.*,abir.reza.tagDemo.Student"%>

<%
	List<Student> data = new ArrayList<>();

	data.add(new Student("abir", "reza", false));
	data.add(new Student("jajhid", "hossen", true));
	data.add(new Student("anon", "mehedee", true));

	pageContext.setAttribute("mystudents", data);
%>

<html>

<body>

	<table border="2">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gold customer</th>
		</tr>
		<c:forEach var="temp" items="${mystudents }">

			<tr>
				<td>${temp.firstName }</td>
				<td>${temp.lastName }</td>
				<td><c:if test="${temp.goldCustomer }">
				 		Special discount
				 	</c:if> <c:if test="${not temp.goldCustomer }">
				 		No discount
				 	</c:if></td>

			</tr>
		</c:forEach>
	</table>



</body>




</html>