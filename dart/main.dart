String checkAge(int age) {
  String message;

  if (age >= 18) {
    message = 'You are an adult';
  } else {
    message = 'You are a minor';
  }

  return message;
}

String determineGrade(int score) {
  String grade;

  if (score >= 70) {
    grade = 'Pass';
  } else {
    grade = 'Fail';
  }

  return grade;
}

void main() {
  print(checkAge(20));
  print(determineGrade(65));
}
