class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void sayHello() {
    print('Hello, I am $name.');
    print('I am $age years old.');
    print('');
  }

  void sayGoodbye() {
    print('Goodbye!');
    print('');
  }
}

abstract class Animal {
  void makeSound();
  void ear();
}

class Dog implements Animal {
  void makeSound() {
    print('Bark!');
    print('');
  }

  void ear() {
    print('Dog ears');
    print('');
  }
}

void main() {
  final person = Person('Alice', 30);
  print('Name: ${person.name}, Age: ${person.age}');
  person.sayHello();

  final dog = Dog();
  dog.makeSound();
}
