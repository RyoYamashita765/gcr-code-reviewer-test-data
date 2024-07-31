struct Car {
    brand: String,
    model: String,
    year: u32,
}

impl Car {
    fn new(brand: String, model: String, year: u32) -> Self {
        Car { brand, model, year }
    }

    fn start_engine(&self) {
        println!("The {} {} engine is starting...", self.brand, self.model);
    }

    fn stop_engine(&self) {
        println!("The {} {} engine is stopping...", self.brand, self.model);
    }
}

fn main() {
    let my_car = Car::new(String::from("FooBar"), String::from("HogePiyo"), 2022);
    my_car.start_engine();
    my_car.stop_engine();
}
