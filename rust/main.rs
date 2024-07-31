trait Animal {
    fn new(name: String) -> Self;
    fn name(&self) -> &str;
    fn make_sound(&self);
}

struct Dog {
    name: String,
}

impl Animal for Dog {
    fn new(name: String) -> Self {
        Dog { name }
    }

    fn name(&self) -> &str {
        &self.name
    }

    fn make_sound(&self) {
        println!("Woof!");
    }
}

impl Dog {
    fn fetch(&self) {
        println!("{} is fetching.", self.name);
    }
}

struct Cat {
    name: String,
}

impl Animal for Cat {
    fn new(name: String) -> Self {
        Cat { name }
    }

    fn name(&self) -> &str {
        &self.name
    }

    fn make_sound(&self) {
        println!("Meow!");
    }
}

impl Cat {
    fn scratch(&self) {
        println!("{} is scratching.", self.name);
    }
}

fn main() {
    let my_dog = Dog::new(String::from("Buddy"));
    my_dog.make_sound();
    my_dog.fetch();

    let my_cat = Cat::new(String::from("Whiskers"));
    my_cat.make_sound();
    my_cat.scratch();
}
