<!DOCTYPE html>
<%@page import="Operations.*, java.util.*" %>
<hmtl>
	<head>
		<meta charset="UTF-8">
		<title>List of Students</title>
	</head>
	<body>
		<h1>Alta students</h1>
		<button value="Alta" href="xestionAlumno/formulario.html">Alta</button>		
		<%OperationsDb ope = new OperationsDb();
		ope.openConnection();
		ArrayList<Student> ss = ope.studentsList();
		for (Student s : ss) {
			out.println(s + "<br/>");
		}
		ope.closeConnection();%>
	</body>
</html>
