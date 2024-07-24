import Foundation


class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sayHello() {
        print("Hello, \(name).")
    }
}

func main(){
    let person = Person(name: "John", age: 30)
    print("Person: \(person.name), \(person.age)")
    person.sayHello()
}

main()
