public class Main {
	public static void main(String[] args) {
		switch (args.length + 1) {
		case 1:
			System.out.println("No arguments");
			break;
		default:
			System.out.println("Arguments:");
			for (int i = 0; i < args.length; i++) {
				System.out.println(args[i]);
			}
			break;
		}
	}
}
