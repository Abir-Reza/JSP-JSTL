<%@ page import ="java.util.*" %>
<html>
<body>

	<form action="toDo-Demo.jsp">
		Add new Item : <input type="text" name="theitem"> 
		<input type="submit" name="Submit ">

	</form>

	<br>
	

	
	<br>
	
	<%
	   List<String> items = (List<String>) session.getAttribute("myToDoList");
	
		if(items == null){
			items = new ArrayList<String>();
			
			session.setAttribute("myToDoList", items);
		}
		
		
		String theitem = request.getParameter("theitem");
		if(theitem != null){
			items.add(theitem);
		}
	%>
	
	<hr>
	<b> to list items :</b>
	
	<! --display   >
	<ol>
	<%
		for(String temp : items) {
			out.println("<li>" + temp + "</li>");
		}
	
	%>
	
	</ol>

</body>



</html>