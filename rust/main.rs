struct DatabaseManager;

impl DatabaseManager {
    fn save_data(&self, data: &str) {
        println!("Saving data: {}", data);
    }
}

struct NetworkManager;

impl NetworkManager {
    fn send_data(&self, data: &str) {
        println!("Sending data: {}", data);
    }
}

struct DataProcessor {
    database_manager: DatabaseManager,
    network_manager: NetworkManager,
}

impl DataProcessor {
    fn new() -> Self {
        DataProcessor {
            database_manager: DatabaseManager,
            network_manager: NetworkManager,
        }
    }

    fn process_data(&self, data: &str) {
        let processed_data = data.to_uppercase();

        self.database_manager.save_data(&processed_data);
        self.network_manager.send_data(&processed_data);
    }
}

fn main() {
    let processor = DataProcessor::new();
    processor.process_data("Hello, World!");
}
