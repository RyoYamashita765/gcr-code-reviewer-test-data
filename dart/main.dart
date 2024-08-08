void main() {
  var pets = ['cat', 'dog', 'fish'];

  while (pets.length > 0) {
    print('-----------------');
    print('I have a ${pets.last}');
    pets.remove(pets.last);
    print('Now I have ${pets.length} pets');
    print('');
  }
}
