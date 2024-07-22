import Foundation

class Person {
    var name: String
    var age: Int
    var address: String?
    var mail: String?

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sayHello() {
        print("Hello, \(name)!")
        print("You are \(age) years old.")
        print("Your mail is \(mail ?? "N/A")")
    }
}

protocol Logger {
    func info(message: String)
    func warning(message: String)
    func error(message: String)
}

class ConsoleLogger: Logger {
    var logLevel: Int = 0

    func info(message: String) {
        print("INFO: \(message)")
        print("================")
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
