void main() {
  const pets = ['cat', 'dog', 'fish'];

  switch (pets[1]) {
    case 'cat':
      print('meow!');
      print('purr');
      break;
    case 'dog':
      print('woof!');
      print('bark');
      break;
    case 'bird':
      print('...');
      break;
    default:
      print('(unknown)');
      break;
  }
}
