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

public class Main {
    public static void main(String[] args) {
       
        Rectangle rectangle = new Rectangle(1, 2, 4, 6);

       
        int area = rectangle.calculateArea();

        
        System.out.println("Total area covered by the rectangle: " + area);
    }
}
