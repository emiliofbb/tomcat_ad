<!DOCTYPE html>
<%@page import="Operations.*, java.util.*" %>
<html>

    <head>

        <meta charset="UTF-8">
        <title>Formulario Alta Students</title>

    </head><!-- head -->

   <body>

        <form action="formulario.jsp" method="post">

            <label for="nomeStudent">Nombre: </label>
            <input type="text" name="name" id="nomeStudent">
		<br>
            <label for="apelidoStudent">Apellidos: </label>
            <input type="text" name="surname" id="apelidoStudent">
            	<br>
	    <label for="dniStudent">DNI: </label>
            <input type="text" name="dni" id="dniStudent">
		<br>
            <label for="idadeStudent">Idade: </label>
            <input type="text" name="age" id="idadeStudent">
		<br>
            <button type="submit" name="Engadir" value="Engadir">Engadir</button>

        </form><!-- form -->

	<% 
		try{

			OperationsDb odb = new OperationsDb(); 
		        
		        odb.openConnection();

			String nome = request.getParameter("name");
			String surname = request.getParameter("surname");
			String dni = request.getParameter("dni");
			int age = Integer.parseInt(request.getParameter("age"));
		    
		        Student student = new Student(nome,surname,dni,age);

		        int row = odb.addStudent(student);
		
			out.print("Lineas afectadas: "+row);


		}catch(Exception e){
			out.println(e.getMessage());
		}

	%>
    </body><!-- body -->

</html>
