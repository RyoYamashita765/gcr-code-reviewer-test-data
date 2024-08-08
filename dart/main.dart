class DatabaseManager {
  void saveData(String data) {
    print('Saving data: $data');
  }
}

class NetworkManager {
  void sendData(String data) {
    print('Sending data: $data');
  }
}

class DataProcessor {
  final DatabaseManager _databaseManager;
  final NetworkManager _networkManager;

  DataProcessor()
      : _databaseManager = DatabaseManager(),
        _networkManager = NetworkManager();

  void processData(String data) {
    String processedData = data.toUpperCase();

    _databaseManager.saveData(processedData);
    _networkManager.sendData(processedData);
  }
}

void main() {
  final processor = DataProcessor();
  processor.processData('Hello, World!');
}
