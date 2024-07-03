public class Main {
	public static void main(String[] args) {
		if (args.length < 1) {
			System.out.println("Hello, Java!");
		} else {
			System.out.println("Hello, " + args[0] + "!");
			for (int i = 1; i < args.length; i++) {
				System.out.println("Hello, " + args[i] + "!");
			}
		}
	}
}
