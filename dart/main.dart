class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void sayHello() {
    print('Hello, my name is $name.');
  }
}

void main() {
  final person = Person('Alice', 30);
  print('Name: ${person.name}, Age: ${person.age}');
  person.sayHello();
}
