String calculateGrade(int score) {
  if (score >= 90) {
    return 'A';
  } else if (score >= 80) {
    return 'B';
  } else if (score >= 70) {
    return 'C';
  } else if (score >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}

void processPayment(double amount, double balance) {
  if (amount <= balance) {
    print('Payment processed successfully');
  } else {
    print('Insufficient funds');
  }
}

double determineShippingCost(double distance, bool isExpedited) {
  if (isExpedited) {
    if (distance < 100.0) {
      return 15.0;
    } else {
      return 25.0;
    }
  } else {
    if (distance < 100.0) {
      return 5.0;
    } else {
      return 10.0;
    }
  }
}

void main() {
  print(calculateGrade(85));
  processPayment(100.0, 150.0);
  print(determineShippingCost(150.0, true));
}
