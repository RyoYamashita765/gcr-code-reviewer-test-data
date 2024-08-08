class Car {
  String brand;
  String model;
  int year;

  Car({required this.brand, required this.model, required this.year});

  void startEngine() {
    print('The $brand $model engine is starting...');
  }

  void stopEngine() {
    print('The $brand $model engine is stopping...');
  }
}

void main() {
  Car myCar = Car(brand: 'FooBar', model: 'HogePiyo', year: 2022);
  myCar.startEngine();
  myCar.stopEngine();
}
