import Foundation

class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sayHello() {
        print("Hello, \(name)!")
    }
}

let logger = ConsoleLogger()
logger.info(message: "Hello, World!")
let person = Person(name: "John", age: 30)
logger.info(message: "Person: \(person.name), \(person.age)")
person.sayHello()
