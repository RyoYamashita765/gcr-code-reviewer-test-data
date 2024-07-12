public class Main {
    companion object {
        @JvmStatic
        fun main(args: Array<String>) {
            val str1: String? = null
            println("The length of str1 is ${str1.length}")

            val arr = arrayOf(1, 2, 3)
            println(arr[4])
        }
    }
}
