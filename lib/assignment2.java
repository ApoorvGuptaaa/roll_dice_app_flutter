import java.util.Scanner;

class Subject {
    String name;
    double credits;
    double marks;
    double gradePoints;

    Subject(String name, double credits, double marks) {
        this.name = name;
        this.credits = credits;
        this.marks = marks;
        this.gradePoints = theGradePoints(marks);
    }

    public static double theGradePoints(double marks) {
        if (marks >= 90) {
            return 10.0;
        } else if (marks >= 80) {
            return 9.0;
        } else if (marks >= 70) {
            return 8.0;
        } else if (marks >= 60) {
            return 7.0;
        } else if (marks >= 50) {
            return 6.0;
        } else {
            return 0.0;
        }
    }

    public double getCredits() {
        return credits;
    }

    public double getGradePoints() {
        return gradePoints;
    }
}

public class assignment2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter your roll number: ");
        String rollNumber = sc.nextLine();

        System.out.print("Enter the number of subjects opted for: ");
        int noOfSubjects = sc.nextInt();
        sc.nextLine(); 

        double allCredits = 0;
        double allCreditPoints = 0;

        for (int i = 1; i <= noOfSubjects; i++) {
            System.out.print("Enter the name of subject " + i + ": ");
            String nameOfSubjects = sc.nextLine();

            System.out.print("Enter the credits for subject " + i + ": ");
            double credits = sc.nextDouble();

            System.out.print("Enter the marks obtained for subject " + i + ": ");
            double marks = sc.nextDouble();
            
            Subject subject = new Subject(nameOfSubjects, credits, marks);

            allCredits += subject.getCredits();
            allCreditPoints += (subject.getCredits() * subject.getGradePoints());

            sc.nextLine(); 
        }

        double cpi = allCreditPoints / allCredits;

        System.out.println("Roll Number: " + rollNumber);
        System.out.println("CPI " + cpi);

        sc.close();
    }
   
    
    
}