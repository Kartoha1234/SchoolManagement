import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;

public class Main {
    public static void main(String[] args) {
        try {
            DatabaseConnection db = new DatabaseConnection();
            var students= db.ReadAllSchoolStudents();
            var teachers = db.ReadAllTeachers();
            var courses = db.ReadAllCourses();
            var exams = db.ReadAllExams();
            db.InsertSchoolStudent(8,"Maria");
            db.InsertTeacher(5,"Dima");
            db.InsertCourse(5, 3);
            db.InsertExam(6,4,1,10);
            db.UpdateStudent(2,"Linda");
            db.UpdateTeacher(4,"Omar");
            db.UpdateCourse(2,1);
            db.UpdateExam(2,2,3,8);

            String comand = "";
            while (comand!= "exit"){
                // to do menu
            }
        } catch (Exception e){
            System.out.println("Something went wrong");
        }
    }
}
