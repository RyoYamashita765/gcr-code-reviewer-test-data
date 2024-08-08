void main() {
  var pets = ['cat', 'dog', 'fish'];

  while (pets.length > 0) {
    print('I have ${pets}.');
    pets.remove(pets.last);
  }
}
