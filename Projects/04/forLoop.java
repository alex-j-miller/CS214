import java.util.Scanner; 		// Get input

class forLoop{
    public static void main(String[] args){

        Scanner keyboard = new Scanner(System.in);
        System.out.println("Num: ");
        double n = keyboard.nextDouble();
        System.out.println(factorial(n));
    }

    public static double factorial(double n){
                double answer = 1.0;
        
        for (int i = 2; i <= n; i++){
            answer *= i;
        }

        return answer;
    }
}