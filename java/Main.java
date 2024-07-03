import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Main {
	public static void main(String[] args) {
		BookDatabase bookDatabase = new BookDatabase("jdbc:mysql://localhost:3306/test", "admin", "pass");
		List<Map<String, String>> result = bookDatabase.selectAllBooks();
		result.forEach(System.out::println);
	}
}

class DatabaseManager {
	private String url;
	private String username;
	private String password;

	public DatabaseManager(String url, String username, String password) {
		this.url = url;
		this.username = username;
		this.password = password;
	}

	public List<Map<String, String>> select(String query) {
		List<Map<String, String>> output = new ArrayList<>();
		try (Connection connection = DriverManager.getConnection(url, username, password);
				Statement statement = connection.createStatement();
				ResultSet resultSet = statement.executeQuery(query)) {
			ResultSetMetaData metaData = resultSet.getMetaData();
			while (resultSet.next()) {
				Map<String, String> row = new HashMap<>();
				for (int i = 1; i <= metaData.getColumnCount(); i++) {
					row.put(metaData.getColumnName(i), resultSet.getString(i));
				}
				output.add(row);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return output;
    }
}

class BookDatabase extends DatabaseManager {
	public BookDatabase(String url, String username, String password) {
		super(url, username, password);
	}

	public List<Map<String, String>> selectAllBooks() {
		return select("SELECT * FROM books");
	}
}
