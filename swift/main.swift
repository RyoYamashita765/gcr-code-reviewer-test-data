import Foundation

class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeSound() {
        print("Some generic animal sound")
    }
}

class Dog: Animal {
    override func makeSound() {
        print("Woof!")
    }
    
    func fetch() {
        print("\(name) is fetching.")
    }
}

class Cat: Animal {
    override func makeSound() {
        print("Meow!")
    }
    
    func scratch() {
        print("\(name) is scratching.")
    }
}

func main(){
    let myDog = Dog(name: "Buddy")
    myDog.makeSound()
    myDog.fetch()

    let myCat = Cat(name: "Whiskers")
    myCat.makeSound()
    myCat.scratch()
}

main()
