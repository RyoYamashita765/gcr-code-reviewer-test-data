public class Main {
	public static void main(String[] args) {
		int answer = 42;
		switch (answer - 1) {
			case 41:
				System.out.println("The answer is 42.");
				answer++;
				break;
			default:
				return;
		}
	}
}
