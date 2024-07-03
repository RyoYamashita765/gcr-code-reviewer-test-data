public class Main {
	public static void main(String[] args) {
		String result = "";
		if (args.length == 0) {
			result = "No arguments";
		} else {
			result = "One or more arguments";
		}
		System.out.println(result);
	}
}
