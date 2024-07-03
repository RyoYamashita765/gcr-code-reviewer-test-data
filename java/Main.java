public class Main {
	public static void main(String[] args) {
		for (int i = 0; i < args.length; i++) {
			System.out.println("[index] " + i);
			System.out.println("[arg] " + args[i]);
		}

		System.out.println("Hello World!");

		for (int i = 0; i < 10; i++) {
			for (int j = 0; j < i; j++) {
				System.out.print("i, j = " + i + ", " + j + " ");
			}
		}
	}
}
