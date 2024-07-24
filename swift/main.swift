import Foundation


class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

func main(){
    let person = Person(name: "John", age: 30)
    print("Person: \(person.name), \(person.age)")
}

main()
