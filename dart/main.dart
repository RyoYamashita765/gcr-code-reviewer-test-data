void processOrder(String? item, int? quantity, bool isVip) {
  if (item != null) {
    if (quantity != null) {
      if (quantity > 0) {
        if (isVip) {
          if (quantity > 10) {
            print('VIP discount applied for bulk order of $item');
          } else {
            print('Standard VIP discount applied for $item');
          }
        } else {
          if (quantity > 20) {
            print('Bulk discount applied for order of $item');
          } else {
            print('Processing standard order for $item');
          }
        }
      } else {
        print('Invalid quantity. Must be greater than 0.');
      }
    } else {
      print('Quantity not specified');
    }
  } else {
    print('Item not specified');
  }
}

void main() {
  processOrder('Laptop', 15, true);
  processOrder('Phone', 5, false);
  processOrder(null, 3, true);
  processOrder('Tablet', null, false);
  processOrder('Desktop', 0, true);
}
