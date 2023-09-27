import java.util.*;

public class oops_lab1 {
public static boolean isPowerOfFour(int num){
    if(num<=0){
        return false;
    }

    if(num==1){
        return true;
    }

    if(num %4!=0){
        return false;
    }

    return isPowerOfFour(num/4);
}

public static void main (String args[]){
    Scanner scanner = new Scanner(System.in);
    System.out.print("Enter the Integer");
    int xx = scanner.nextInt();
     if (isPowerOfFour(xx)) {
            System.out.println(xx + " is a power of 4.");
        } 
        else {
            System.out.println(xx + " is not a power of 4.");
        }
}
}