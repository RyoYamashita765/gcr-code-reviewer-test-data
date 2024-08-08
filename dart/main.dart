class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

class Dog {
  void bark() {
    print('Bark!');
    print('\n');
  }
}

void main() {
  final person = Person('Alice', 30);
  print('Name: ${person.name}, Age: ${person.age}');

  final dog = Dog();
  dog.bark();
}
