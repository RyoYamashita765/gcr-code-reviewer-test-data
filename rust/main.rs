fn calculate_grade(score: i32) -> String {
    if score >= 90 {
        "A".to_string()
    } else if score >= 80 {
        "B".to_string()
    } else if score >= 70 {
        "C".to_string()
    } else if score >= 60 {
        "D".to_string()
    } else {
        "F".to_string()
    }
}

fn process_payment(amount: f64, balance: f64) {
    if amount <= balance {
        println!("Payment processed successfully");
    } else {
        println!("Insufficient funds");
    }
}

fn determine_shipping_cost(distance: f64, is_expedited: bool) -> f64 {
    if is_expedited {
        if distance < 100.0 {
            15.0
        } else {
            25.0
        }
    } else {
        if distance < 100.0 {
            5.0
        } else {
            10.0
        }
    }
}

fn main() {
    println!("{}", calculate_grade(85));
    process_payment(100.0, 150.0);
    println!("{}", determine_shipping_cost(150.0, true));
}
