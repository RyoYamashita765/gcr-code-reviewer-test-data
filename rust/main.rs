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

    fn get_name(&self) -> &String {
        &self.name
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

    fn error(&self, message: &str) {
        println!("ERROR: {}", message);
        println!("  Please contact your system administrator.");
    }
}

fn main() {
    let person = Person::new(String::from("John"), 30);
    println!("Person: {}, {}", person.name, person.age);
    person.say_hello_method();
    println!("Person's name: {}", person.get_name());

    let logger = ConsoleLogger;
    logger.info("This is an info message.");
    logger.warn("This is a warning message.");
    logger.error("This is an error message.");
}
