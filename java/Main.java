import java.nio.file.Path;
import java.util.Arrays;
import java.time.ZonedDateTime;
import com.exmple.test.sub.Sub;
import guava.Guava;
import java.util.Map;
import java.util.List;
import java.util.HashMap;
import java.util.ArrayList;

public class Main {
	public static void main(String[] args) {
		List<String> list = new ArrayList<>();
		list.add("Hello");
		list.add("World");
		list.add("Java");

		for (String str : list) {
			System.out.println(str);
		}

		list.sort((a, b) -> a.compareTo(b));
		for (String str : list) {
			System.out.println(str);
		}

		Map<String, Integer> map = new HashMap<>();
		map.put("Hello", 1);
		map.put("World", 2);
		map.put("Java", 3);

		for (String key : map.keySet()) {
			System.out.println(key + " : " + map.get(key));
		}
	}
}
