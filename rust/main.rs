struct Person {
    name: String,
    age: u32,
}

impl Person {
    fn new(name: String, age: u32) -> Self {
        Person { name, age }
    }

    fn say_hello(&self) {
        println!("Hello, my name is {}.", self.name);
    }
}

trait Logger {
    fn info(&self, message: &str);
    fn warning(&self, message: &str);
    fn error(&self, message: &str);
}

struct ConsoleLogger;

impl Logger for ConsoleLogger {
    fn info(&self, message: &str) {
        println!("INFO: {}", message);
    }

    fn warning(&self, message: &str) {
        println!("WARNING: {}", message);
    }

    fn error(&self, message: &str) {
        println!("ERROR: {}", message);
    }
}

fn main() {
    let person = Person::new(String::from("John"), 30);
    println!("Person: {}, {}", person.name, person.age);
    person.say_hello();

    let logger = ConsoleLogger;
    logger.info("This is an info message.");
    logger.warning("This is a warning message.");
    logger.error("This is an error message.");
}
