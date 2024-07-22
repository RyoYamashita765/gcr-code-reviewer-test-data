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

class ConsoleLogger {

    func info(message: String) {
        print("INFO: \(message)")
    }

    func warning(message: String) {
        print("WARNING: \(message)")
        print("================")
    }
}

let logger = ConsoleLogger()
logger.info(message: "Hello, World!")
let person = Person(name: "John", age: 30)
logger.info(message: "Person: \(person.name), \(person.age)")
person.sayHello()
