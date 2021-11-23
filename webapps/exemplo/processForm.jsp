<!DOCTYPE html>
<html>
	<body>

		<h2>Show information</h2>

		<p>
			Name: <%=request.getParameter("fname")%>
			<br> Age: <%=request.getParameter("age")%>
		</p>

		<a href="thirdPage.jsp?fname=<%=request.getParameter("fname")%>">Third Page</a>
		
	</body>
</html>
