fn main() {
    println!("Hello, world!");
    let args: Vec<String> = std::env::args().collect();
    for i in 1..args.len() {
        println!("  {}", args[i]);
        println!("---");
        println!("///");
        println!("   ");
    }
}
