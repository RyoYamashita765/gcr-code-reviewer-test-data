struct Person {
    name: String,
    age: u32,
}

impl Person {
    fn new(name: String, age: u32) -> Self {
        Person { name, age }
    }

    fn say_hello_method(&self) {
        println!("Hello, {}.", self.name);
        println!("  {} years old.", self.age);
    }
}

struct ConsoleLogger;

impl ConsoleLogger {
    fn info(&self, message: &str) {
        println!("INFO: {}", message);
    }

    fn warn(&self, message: &str) {
        println!("WARNING: {}", message);
        println!("  Please proceed with caution.");
    }
}

fn main() {
    let person = Person::new(String::from("John"), 30);
    println!("Person: {}, {}", person.name, person.age);
    person.say_hello_method();

    let logger = ConsoleLogger;
    logger.info("This is an info message.");
    logger.warn("This is a warning message.");
}
