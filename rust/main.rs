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

fn main() {
    let person = Person::new(String::from("John"), 30);
    println!("Person: {}, {}", person.name, person.age);
    person.say_hello();
}
