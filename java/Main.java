public class Main {
	public static void main(String[] args) {
		switch (args.length) {
		case 0:
			System.out.println("No arguments");
			break;
		default:
			System.out.println("One or more arguments");
			break;
		}
	}
}
