fn main() {
    let numbers = vec![1, 2, 3, 4, 5];
    let mut squared_numbers: Vec<i32> = Vec::new();

    for number in numbers {
        let squared = number * number;
        squared_numbers.push(squared);
    }

    println!("Squared numbers: {:?}", squared_numbers);

    let names = vec!["Alice", "Bob", "Charlie"];
    let mut uppercase_names: Vec<String> = Vec::new();

    for name in names {
        let uppercase_name = name.to_uppercase();
        uppercase_names.push(uppercase_name);
    }

    println!("Uppercase names: {:?}", uppercase_names);
}
