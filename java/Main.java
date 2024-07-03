public class Main {
	public static void main(String[] args) {
		int answer = 42;
		switch (answer - 1) {
			case 41:
				System.out.println("The answer is 42.");
				break;
			default:
				System.out.println("The answer is not 42.");
				break;
		}
	}
}
