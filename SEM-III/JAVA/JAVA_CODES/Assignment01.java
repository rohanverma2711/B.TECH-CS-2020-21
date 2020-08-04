import java.util.Scanner;
public class Assignment01 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("enter a string :");
        String inputString = sc.nextLine();
        System.out.print("Index: ");
        for (int i = 0; i <inputString.length(); i++) {
            System.out.print(i);
            if (i < inputString.length() - 1) {
                System.out.print("\t");
            }
        }
        System.out.println();
        System.out.print("Chars: ");
        for (int j = 0; j < inputString.length(); j++) {
            System.out.print(inputString.charAt(j));
            if (j < inputString.length())
                System.out.print("\t");
        }
    }
}




