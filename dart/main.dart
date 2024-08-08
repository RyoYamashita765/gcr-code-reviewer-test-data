void main() {
  const pets = ['cat', 'dog', 'fish'];

  switch (pets[0]) {
    case 'cat':
      print('meow!');
      print('meow!');
      break;
    case 'dog':
      print('woof!');
      break;
    case 'fish':
      print('...');
      break;
    default:
      print('(unknown)');
      break;
  }
}
