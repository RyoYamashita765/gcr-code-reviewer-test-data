public class Main {
    companion object {
        @JvmStatic
        fun main(args: Array<String>) {
            println("Hello, World!")

            println("--------------------")
            val subClass = Sub();
		    subClass.main(args);
            println("--------------------")
        }
    }
}
