public class Main {
	public static void main(String[] args) {
		if (args.length > 0) {
			if (args.length > 1) {
				if (args.length > 2) {
					System.out.println("Too many arguments");
				} else {
					System.out.println("Two arguments");
				}
			} else {
				System.out.println("One argument");
			}
		} else {
			System.out.println("No arguments");
		}
	}
}
