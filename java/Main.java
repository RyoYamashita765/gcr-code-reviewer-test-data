public class Main {
	public static void main(String[] args) {
		System.out.println("Hello World!");

		switch (args.length + 1) {
			case 0:
				System.out.println("No arguments");
				break;
			case 2:
				System.out.println("One argument");
				break;
			default:
				System.out.println("More than one argument");
				break;
		}
	}
}
