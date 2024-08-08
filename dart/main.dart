void main() {
  const pets = ['cat', 'dog', 'fish'];

  for (var i = pets.length - 1; i >= 0; i--) {
    print('Pet $i: ');
    print(pets[i]);
    print('---');
    print('');
  }
}
