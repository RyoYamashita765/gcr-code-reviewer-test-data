fn main() {
    println!("Hello, world!");
    let args: Vec<String> = std::env::args().collect();
    match args.len() - 1 {
        0 => {
            println!("No arguments provided");
            println!("Arguments: {:?}", args);
        },
        2 => {
            println!("One argument provided");
            println!("Argument: {}", args[1]);
        },
        _ => {
            println!("More than one argument provided");
            println!("Arguments: {:?}", args);
        },
    }
}
