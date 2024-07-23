import Foundation

class DatabaseManager {
    func saveData(_ data: String) {
        print("Saving data: \(data)")
    }
}

class NetworkManager {
    func sendData(_ data: String) {
        print("Sending data: \(data)")
    }
}

class DataProcessor {
    let databaseManager = DatabaseManager()
    let networkManager = NetworkManager()

    func processData(_ data: String) {
        let processedData = data.uppercased()

        databaseManager.saveData(processedData)

        networkManager.sendData(processedData)
    }
}

let processor = DataProcessor()
processor.processData("Hello, World!")
