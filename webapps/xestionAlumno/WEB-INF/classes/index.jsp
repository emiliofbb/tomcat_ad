<!DOCTYPE html>
<%@page import="Operations.*, java.util.*"%>
<hmtl>
	<head>
		<meta charset="UTF-8">
		<title>List of Students</title>
	</head>
	<body>
		<% 
			 OperationsDb odb = new OperationsDb();
			 odb.openConnection();
			 System.out.println("Sudents da base de datos:");
			 ArrayList<Student> studentArray = odb.studentsList();
			 for (Student s : studentArray) {
				System.out.println(s);
			   }
		%>
	</body>
</html>
