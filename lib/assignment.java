import java.util.Scanner;

class Rectangle {
    private int x1, y1; 
    private int x2, y2; 

    
    public Rectangle(int x1, int y1, int x2, int y2) {
        this.x1 = x1;
        this.y1 = y1;
        this.x2 = x2;
        this.y2 = y2;
    }

    
    public int calculateArea() {
      
        int width = x2 - x1;
        int height = y2 - y1;

        
        return width * height;
    }
}

public class assignment {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        
        System.out.print("Enter the x1 coordinate: ");
        int x1 = scanner.nextInt();

        System.out.print("Enter the y1 coordinate: ");
        int y1 = scanner.nextInt();

        System.out.print("Enter the x2 coordinate: ");
        int x2 = scanner.nextInt();

        System.out.print("Enter the y2 coordinate: ");
        int y2 = scanner.nextInt();

       
        Rectangle rectangle = new Rectangle(x1, y1, x2, y2);

        
        int area = rectangle.calculateArea();

       
        System.out.println("Total area covered by the rectangle: " + area);

       
        scanner.close();
    }
}
