<!DOCTYPE hmtl>
<%@page import="Operations.*, java.util.*" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Info alumnos</title>
	</head>
	<body>
		<% String dni = request.getParameter("dni");
		   OperationsDb odb = new OperationsDb(); 
		   odb.openConnection();
		   Student s = odb.getStudent(dni);%>
		
		<table border="1px solid black">
			<tr>
				<th>Apelido</th>
				<th>Idade</th>
				<th>Dni</th>
			</tr>
			<tr>	
				<td><% out.print(s.getSurname()); %></td>
				<td><% out.print(s.getAge()); %></td>
				<td><% out.print(s.getDni()); %></td>
			</tr>
		</table>
	</body>
<html>
