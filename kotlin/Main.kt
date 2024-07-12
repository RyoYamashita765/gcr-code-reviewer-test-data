class Customer(val isPremium: Boolean, val loyaltyYears: Int, val purchaseCount: Int)

fun getDiscountPercentage(customer: Customer): Int {
    if (customer.isPremium) {
        if (customer.loyaltyYears > 5) {
            return 20
        } else {
            return 15
        }
    } else {
        if (customer.purchaseCount > 10) {
            return 10
        } else {
            return 5
        }
    }
}

public class Main {
    companion object {
        @JvmStatic
        fun main(args: Array<String>) {
            val customer = Customer(true, 6, 10)
            val discount = getDiscountPercentage(customer)
            println("Customer: ${customer.isPremium}, ${customer.loyaltyYears}, ${customer.purchaseCount}")
            println("Discount: $discount%")
        }
    }
}
