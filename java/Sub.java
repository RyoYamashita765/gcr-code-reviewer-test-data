public class Sub {
    public static void main(String[] args) {
        System.out.println("Hello, Sub World!");

        for (int i = 0; i <= args.length - 1; i++) {
            System.out.println("Argument []" + i + "]: " + args[i]);
        }
    }
}
