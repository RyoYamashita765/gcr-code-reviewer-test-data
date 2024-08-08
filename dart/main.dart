void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> squaredNumbers = [];

  for (int number in numbers) {
    int squared = number * number;
    squaredNumbers.add(squared);
  }

  print('Squared numbers: $squaredNumbers');

  List<String> names = ['Alice', 'Bob', 'Charlie'];
  List<String> uppercaseNames = [];

  for (String name in names) {
    String uppercaseName = name.toUpperCase();
    uppercaseNames.add(uppercaseName);
  }

  print('Uppercase names: $uppercaseNames');
}
