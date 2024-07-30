fn main() {
    println!("Hello, world!");
    let args: Vec<String> = std::env::args().collect();
    if args.len() >= 2 {
        println!("You passed {} arguments", args.len() - 1);
        println!("--------------------");
    } else {
        println!("You passed no arguments");
        println!("--------------------");
    }
}
