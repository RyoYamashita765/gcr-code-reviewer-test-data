void main() {
  var pets = ['cat', 'dog', 'fish'];

  while (pets.isNotEmpty) {
    print('-----------------');
    print('I have a ${pets.last}');
    pets.removeLast();
    print('Now I have ${pets.length} pets');
    print('');
  }
}
