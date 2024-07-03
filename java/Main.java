public class Main {
	public static void main(String[] args) {
		System.out.println("Printer:");
		Printer printer = new Printer();
	}
}

class Printer {
	public void print() {
		System.out.println("Hello, Java World!");
		System.out.println("(from Printer)");
	}
}
