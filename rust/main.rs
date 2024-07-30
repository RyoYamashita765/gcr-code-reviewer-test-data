fn main() {
    println!("Hello, world!");
    let args: Vec<String> = std::env::args().collect();
    if args.len() > 1 {
        println!("You passed {} arguments", args.len() - 1);
        println!("args: {:?}", args);
    } else {
        println!("You passed no arguments");
    }
}
