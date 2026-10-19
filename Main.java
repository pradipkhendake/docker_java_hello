public class Main {
    public static void main(String[] args) {
        int a = 10;
        int b = 20;

        System.out.println("Variable a = " + a);
        System.out.println("Variable b = " + b);

        if (a > b) {
            System.out.println("a is greater than b");
        } else if (b > a) {
            System.out.println("b is greater than a");
        } else {
            System.out.println("Both a and b are equal");
        }
    }
}
