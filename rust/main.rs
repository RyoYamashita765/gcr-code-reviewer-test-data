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
        println!("I am {} years old.", self.age);
    }

    fn get_name(&self) -> &String {
        &self.name
    }
}

trait Logger {
    fn info(&self, message: &str);
    fn warning(&self, message: &str);
    fn error(&self, message: &str);
    fn debug(&self, message: &str);
}

struct ConsoleLogger;

impl Logger for ConsoleLogger {
    fn info(&self, message: &str) {
        println!("INFO: {}", message);
    }

    fn warning(&self, message: &str) {
        println!("WARNING: {}", message);
        println!("Please proceed with caution.");
    }

    fn error(&self, message: &str) {
        println!("ERROR: {}", message);
        println!("Please contact the system administrator.");
    }

    fn debug(&self, message: &str) {
        println!("DEBUG: {}", message);
    }
}

fn main() {
    let person = Person::new(String::from("John"), 30);
    println!("Person: {}, {}", person.name, person.age);
    person.say_hello();
    println!("Person's name: {}", person.get_name());

    let logger = ConsoleLogger;
    logger.info("This is an info message.");
    logger.warning("This is a warning message.");
    logger.error("This is an error message.");
    logger.debug("This is a debug message.");
}
