import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Scanner;
import Operations.*;

public class Program{
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        
        //Creo una instancia de la clase OperationsDb
        OperationsDb odb = new OperationsDb();

        try {
            //Abro la conxion con la base de datos
            odb.openConnection();
            //Llamadas a los metodos

            //Enseñamos los students
            System.out.println("Sudents da base de datos:");
            ArrayList<Student> studentArray = odb.studentsList();
            for (Student s : studentArray) {
                System.out.println(s);
            }

            //Pedimos los datos del nuevo usuario
            System.out.println("Añade un nuevo student");
            System.out.println("DNI:");
            String dni = sc.nextLine();
            System.out.println("Nome:");
            String nome = sc.nextLine();
            System.out.println("Apelido:");
            String apelido = sc.nextLine();
            System.out.println("Idade:");
            int idade = sc.nextInt();

            Student simon = new Student(dni, nome, apelido, idade);
            int resultAdd = odb.addStudent(simon);
            System.out.println("Realizaronse "+resultAdd+" cambios");

            //Pedir los datos de un student especifico
            sc.nextLine();
            System.out.println("Introduce el dni del alumno a consultar:");
            String consulta = sc.nextLine();
            Student student = odb.getStudent(consulta);
            System.out.println(student);

            //Borramos un dni especifico
            System.out.println("Introduce el dni del alumno a eliminar");
            String remove = sc.nextLine();
            int deleteResult = odb.deleteStudent(remove);
            System.out.println("Realizaronse "+deleteResult+" cambios");
            
            //Modificar un alumno
            System.out.println("Escribe el dni del alumno a modificar");
            String novoDni = sc.nextLine();
            System.out.println("Novo nome");
            String novoNome = sc.nextLine();
            System.out.println("Novo apelido");
            String novoApelido = sc.nextLine();
            System.out.println("Nova idade");
            int novaIdade = sc.nextInt();
            Student newStudent = new Student(novoDni, novoNome, novoApelido, novaIdade);
            int modResult = odb.modifyStudent(newStudent);
            System.out.println("Realizaronse "+modResult+" cambios");
            
            //Cierro la conexion
            odb.closeConnection();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        

    }//main

}//class
