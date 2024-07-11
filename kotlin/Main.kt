fun main() {
    val answer = 42
    when (answer - 1) {
        42 -> {
            println("The answer is 42.")
            println(answer)
        }
        else -> println("The answer is not 42.")
    }
}
