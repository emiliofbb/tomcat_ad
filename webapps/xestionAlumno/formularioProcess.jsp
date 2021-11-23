<!DOCTYPE html>
<%@page import="Operations.*, java.util.*" %>
<html>

    <head>

        <title>Processo Alta</title>
        <meta charset="UTF-8">

    </head><!-- head -->
	    <body>
        
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
			e.getMessage();
		}

                
               
            %>
    </body><!-- body -->

</html><!-- html -->
