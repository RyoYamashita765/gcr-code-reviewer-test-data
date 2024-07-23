import Foundation

func processOrder(item: String?, quantity: Int?, isVIP: Bool) {
    if let item = item {
        if let quantity = quantity {
            if quantity > 0 {
                if isVIP {
                    if quantity > 10 {
                        print("VIP discount applied for bulk order of \(item)")
                    } else {
                        print("Standard VIP discount applied for \(item)")
                    }
                } else {
                    if quantity > 20 {
                        print("Bulk discount applied for order of \(item)")
                    } else {
                        print("Processing standard order for \(item)")
                    }
                }
            } else {
                print("Invalid quantity. Must be greater than 0.")
            }
        } else {
            print("Quantity not specified")
        }
    } else {
        print("Item not specified")
    }
}

processOrder(item: "Laptop", quantity: 15, isVIP: true)
processOrder(item: "Phone", quantity: 5, isVIP: false)
processOrder(item: nil, quantity: 3, isVIP: true)
processOrder(item: "Tablet", quantity: nil, isVIP: false)
processOrder(item: "Desktop", quantity: 0, isVIP: true)
