import Foundation

class Car {
    var brand: String
    var model: String
    var year: Int
    
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }
    
    func startEngine() {
        print("The \(brand) \(model) engine is starting...")
    }
    
    func stopEngine() {
        print("The \(brand) \(model) engine is stopping...")
    }
}

let myCar = Car(brand: "FooBar", model: "HogePiyo", year: 2022)
myCar.startEngine()
myCar.stopEngine()
