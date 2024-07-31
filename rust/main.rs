fn process_order(item: Option<&str>, quantity: Option<i32>, is_vip: bool) {
    if let Some(item) = item {
        if let Some(quantity) = quantity {
            if quantity > 0 {
                if is_vip {
                    if quantity > 10 {
                        println!("VIP discount applied for bulk order of {}", item);
                    } else {
                        println!("Standard VIP discount applied for {}", item);
                    }
                } else {
                    if quantity > 20 {
                        println!("Bulk discount applied for order of {}", item);
                    } else {
                        println!("Processing standard order for {}", item);
                    }
                }
            } else {
                println!("Invalid quantity. Must be greater than 0.");
            }
        } else {
            println!("Quantity not specified");
        }
    } else {
        println!("Item not specified");
    }
}

fn main() {
    process_order(Some("Laptop"), Some(15), true);
    process_order(Some("Phone"), Some(5), false);
    process_order(None, Some(3), true);
    process_order(Some("Tablet"), None, false);
    process_order(Some("Desktop"), Some(0), true);
}
