import java.util.Scanner;  // include class for Scanner

public class switchJava {

    public static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);
        int avg = keyboard.nextInt();
        System.out.println(letterGrade(avg));
    }

    public static char letterGrade(int avg) {
        switch (avg) {
            case 10:
            case 9:
                return 'A';
            case 8:
                return 'B';
            case 7:
                return 'C';
            case 6:
                return 'D';
            default:
                return 'F';
        }
    }
}