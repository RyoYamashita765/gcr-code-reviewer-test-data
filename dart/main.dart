class User {
  final int id;
  final String? name;
  final String? email;

  User({required this.id, this.name, this.email});
}

void processUserData(List<User> users) {
  for (var user in users) {
    final userName = user.name ?? '';
    final userEmail = user.email ?? '';

    print('User ${user.id}: $userName, Email: $userEmail');

    final emailComponents = userEmail.split('@');
    final domain = emailComponents.length > 1 ? emailComponents[1] : '';

    print('Email domain: $domain');
  }
}

void main() {
  // case 1
  final users = [
    User(id: 1, name: 'Alice', email: 'alice@example.com'),
    User(id: 2, name: null, email: 'bob@example.com'),
    User(id: 3, name: 'Charlie', email: null),
    User(id: 4, name: 'David', email: 'david@invalid'),
  ];
  processUserData(users);

  // case 2
  final allScores = [85, 92, 78, 95, 88];
  final p = 6;
  print('allScores[$p] = ${allScores[p]}');
}
