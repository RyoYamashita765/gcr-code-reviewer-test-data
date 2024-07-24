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
        print("You are \(age) years old.")
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
    }

    func warning(message: String) {
        print("WARNING: \(message)")
    }

    func error(message: String) {
        print("ERROR: \(message)")
    }
}

func main(){
    let logger = ConsoleLogger()
    logger.info(message: "Hello, World!")
    let person = Person(name: "John", age: 30)
    print("Person: \(person.name), \(person.age)")
    person.sayHello()
    logger.warning(message: "This is a warning message.")
}

main()
