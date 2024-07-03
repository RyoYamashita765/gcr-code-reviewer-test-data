public class Main {
	public static void main(String[] args) {
		System.out.println("Hello World!");

		switch (args.length) {
			case 0:
				System.out.println("No arguments");
				break;
			case 1:
				System.out.println("One argument");
				break;
			default:
				System.out.println("More than one argument");
				break;
		}
	}
}
