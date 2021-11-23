package Operations;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class OperationsDb {
    
    private Connection nexion;

    public void openConnection() throws Exception, SQLException{
        
        String url = "jdbc:mysql://mariadb/db_alumnos";
        nexion = DriverManager.getConnection(url, "manager", "abc123.");
        
    }//openConnection


    public void closeConnection() throws Exception, SQLException{
        
        nexion.close();
        
    }//closeConnection


    public int addStudent(Student student) throws Exception, SQLException{
        int result = 0;
       
        String sqlOrder = "insert into student(dni, name, surname, age)"+
                            "values(?,?,?,?)";
        PreparedStatement insertStatement = nexion.prepareStatement(sqlOrder);
        insertStatement.setString(1, student.getDni());
        insertStatement.setString(2, student.getName());
        insertStatement.setString(3, student.getSurname());
        insertStatement.setInt(4, student.getAge());
        result = insertStatement.executeUpdate();
        
        return result;

    }//addStudent


    public Student getStudent(String dni) throws Exception, SQLException{
        Student student = null;  

        String sqlOrder = "select * from student where dni=?;";
        PreparedStatement getStatement = nexion.prepareStatement(sqlOrder);
        getStatement.setString(1, dni);
        ResultSet result = getStatement.executeQuery();

        while(result.next()){
            String studentDni = result.getString("dni");
            String studentName = result.getString("name");
            String studentSurname = result.getString("surname");
            int studentAge = result.getInt("age");
            student = new Student(studentDni, studentName, studentSurname, studentAge);
        }

        result.close();
        
        return student;

    }//getStudent

    public int deleteStudent(String dni) throws Exception, SQLException{
        int result = 0;
               
        String sqlOrder = "delete from student where dni=?;";
        PreparedStatement deleteStatement = nexion.prepareStatement(sqlOrder);
        deleteStatement.setString(1, dni);
        result = deleteStatement.executeUpdate();
        
        return result;

    }//deleteStudent

    public int modifyStudent(Student student) throws Exception, SQLException{
        int result = 0;

        String sqlOrder = "update student "+
                            "set name = ?, "+
                            "surname = ?, "+
                            "age = ? "+
                            "where dni=?;";
        PreparedStatement updateStatement = nexion.prepareStatement(sqlOrder);
        updateStatement.setString(1, student.getName());
        updateStatement.setString(2, student.getSurname());
        updateStatement.setInt(3, student.getAge());
        updateStatement.setString(4, student.getDni());
        result = updateStatement.executeUpdate();
       
        return result;
    
    }//modifyStudent

    public ArrayList<Student> studentsList() throws Exception, SQLException{
        ArrayList<Student> studentArray = new ArrayList<>();
            
            String sqlOrder = "select * from student;";

            Statement query = nexion.createStatement();
            ResultSet result = query.executeQuery(sqlOrder);

            while(result.next()){
                String dni = result.getString("dni");
                String name = result.getString("name");
                String surname = result.getString("surname");
                int age = result.getInt("age");

                Student student = new Student(dni, name, surname, age);
                studentArray.add(student);
            }

        return studentArray;
    
    }//studentList


}
