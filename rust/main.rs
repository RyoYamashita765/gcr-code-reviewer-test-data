fn main() {
    println!("Hello, world!");
    let args: Vec<String> = std::env::args().collect();
    match args.len() {
        1 => {
            println!("No arguments provided");
        },
        2 => {
            println!("One argument provided");
        },
        _ => {
            println!("More than one argument provided");
        },
    }
}
