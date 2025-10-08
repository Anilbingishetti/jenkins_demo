import java.util.*;
class Test {
    public static void main(String[] args) {
      //sum of five numbers
      int [] arr = new int [5];
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter five numbers:");
        for(int i=0;i<5;i++){
            arr[i] = sc.nextInt();
        }
        int sum = 0;
        for(int i=0;i<5;i++){
            sum += arr[i];
        }
        System.out.println("Sum of five numbers is: " + sum);
        sc.close();
    }
}   