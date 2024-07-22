import Foundation

class Person {
    var name: String
    var age: Int
    var address: String?

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sayHello() {
        print("Hello, \(name)!")
        print("You are \(age) years old.")
        print("----------------")
    }

    func setAddress(address: String) {
        self.address = address
    }
}

protocol Logger {
    func info(message: String)
    func warning(message: String)
    func error(message: String)
}

class ConsoleLogger: Logger {
    func info(message: String) {
        print("INFO: \(message)")
        print("----------------")
    }

    func warning(message: String) {
        print("WARNING: \(message)")
        print("----------------")
    }

    func error(message: String) {
        print("----------------")
        print("ERROR: \(message)")
        print("----------------")
    }

    func debug(message: String) {
        print("DEBUG: \(message)")
        print("----------------")
    }
}

let logger = ConsoleLogger()
logger.info(message: "Hello, World!")
let person = Person(name: "John", age: 30)
logger.info(message: "Person: \(person.name), \(person.age)")
person.sayHello()
