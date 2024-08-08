class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void greet() {
    print('Hello, I am $name.');
    print('I am $age years old.');
    print('\n');
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
    print('\n');
  }

  void ear() {
    print('Dog ears');
    print('');
  }
}

void main() {
  final person = Person('Alice', 30);
  print('Name: ${person.name}, Age: ${person.age}');
  person.greet();

  final dog = Dog();
  dog.makeSound();
}
