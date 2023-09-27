import java.util.*;
public class Student {
    private int studentId;
    private String studentName;
    private double marks;

    public Student(){
        studentId =0 ;
        studentName = "";
        marks = 0.0;
    }

    public void setDetails(int id , String name, double marks){
        this.studentId = id;
        this.studentName = name;
        this.marks = marks;

    }

    public void calculateGrade(){
        if(marks>=90){
           System.out.println("A+"); 
        }
         if(marks>=80 && marks<90){
           System.out.println("A"); 
        }
         
         if(marks>=70&& marks <80){
           System.out.println("B"); 
        }
         if(marks>=60 && marks<70){
           System.out.println("C"); 
        }
         if(marks>=50 && marks<60){
           System.out.println("D"); 
        }
        if(marks <50){
         System.out.print("Fail");
        }
    }

     public void displayDetails() {
        System.out.println("Student ID: " + studentId);
        System.out.println("Student Name: " + studentName);
        System.out.println("Marks: " + marks);
        calculateGrade();
        
}

 public static void main(String[] args) {
        Student student1 = new Student();
        student1.setDetails(202251021, "Apoorv", 100);
        student1.displayDetails();
    }



}
