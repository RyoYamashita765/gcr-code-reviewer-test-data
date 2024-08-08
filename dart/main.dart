abstract class Animal {
  String name();
  void makeSound();
}

class Dog implements Animal {
  String _name;

  Dog(this._name);

  @override
  String name() => _name;

  @override
  void makeSound() {
    print('Woof!');
  }

  void fetch() {
    print('$_name is fetching.');
  }
}

class Cat implements Animal {
  String _name;

  Cat(this._name);

  @override
  String name() => _name;

  @override
  void makeSound() {
    print('Meow!');
  }

  void scratch() {
    print('$_name is scratching.');
  }
}

void main() {
  var myDog = Dog('Buddy');
  myDog.makeSound();
  myDog.fetch();

  var myCat = Cat('Whiskers');
  myCat.makeSound();
  myCat.scratch();
}
