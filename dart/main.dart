class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void sayHello() {
    print('Hello, my name is $name.');
    print('I am $age years old.');
  }
}

abstract class Animal {
  void makeSound();
}

class Dog implements Animal {
  void makeSound() {
    print('Bark!');
  }
}

void main() {
  final person = Person('Alice', 30);
  print('Name: ${person.name}, Age: ${person.age}');
  person.sayHello();

  final dog = Dog();
  dog.makeSound();
}
