import Foundation

func calculateGrade(score: Int) -> String {
    if score >= 90 {
        return "A"
    } else {
        if score >= 80 {
            return "B"
        } else {
            if score >= 70 {
                return "C"
            } else {
                if score >= 60 {
                    return "D"
                } else {
                    return "F"
                }
            }
        }
    }
}

func processPayment(amount: Double, balance: Double) {
    if amount <= balance {
        print("Payment processed successfully")
    } else {
        print("Insufficient funds")
    }
}

func determineShippingCost(distance: Double, isExpedited: Bool) -> Double {
    if isExpedited {
        if distance < 100 {
            return 15.0
        } else {
            return 25.0
        }
    } else {
        if distance < 100 {
            return 5.0
        } else {
            return 10.0
        }
    }
}

func main(){
    print(calculateGrade(score: 85))
    processPayment(amount: 100, balance: 150)
    print(determineShippingCost(distance: 150, isExpedited: true))
}

main()
