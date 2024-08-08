class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void greet() {
    print('Hello, I am $name.');
    print('I am $age years old.');
    print('\n');
  }
}

class Dog {
  void bark() {
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
  dog.bark();
}
