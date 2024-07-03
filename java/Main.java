public class Main {
	public static void main(String[] args) {
		System.out.println("Hello World!");

		printHello();
	}

	public static void initClasses() {
		Dummy dummy = new Dummy();
		Cache cache = new Cache();
		Printer printer = new Printer();
	}

	public static void printHello() {
		System.out.println(" World");
	}
}

class Dummy {
	public void dummy() {
		System.out.println("Dummy");
	}
}

class Cache {
	String cache;
	public void setCache(String cache) {
		this.cache = cache;
	}
}

class Printer {
	public void print() {
		System.out.println("Hello World!");
	}

	public void print(String message) {
		System.out.println(message);
	}
}
