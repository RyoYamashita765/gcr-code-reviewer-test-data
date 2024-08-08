void main() {
  const pets = ['cat', 'dog', 'fish'];

  switch (pets[0]) {
    case 'cat':
      print('meow!');
      print('purr');
      break;
    case 'dog':
      print('woof!');
      print('bow wow');
      break;
    case 'fish':
      print('...');
      break;
    default:
      print('(unknown)');
      break;
  }
}
