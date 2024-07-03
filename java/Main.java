public class Main {
	public static void main(String[] args) {
		System.out.println("Hello World!");

		printHello();
	}

	public static void printHello() {
		System.out.println(" World");
	}
}

class Dummy {

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
}
