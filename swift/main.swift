import Foundation

// The sample of protocol
protocol Document {
    var title: String { get }
    var author: String { get }
    var year: Int { get }

    func display()

    func displaySlim()
}

// The sample of extension
extension Document {
    // The sample of default implementation
    func displaySlim() {
        print("<<\(title)>>")
    }
}

class Book: Document {
    var title: String
    var author: String
    var year: Int

    init(title: String, author: String, year: Int) {
        self.title = title
        self.author = author
        self.year = year
    }

    func display() {
        print("Title: \(title)")
        print("Author: \(author)")
        print("Year: \(year)")
    }

    // The sample of static function
    static func listing(list: Array<Book>) {
        // The sample closure in function
        let displayLog: (Book) -> Void = { book in
            print("  \"\(book.title)\" by \(book.author) [\(book.year)]")
        }

        print("\nBooks:")
        for book in list {
            displayLog(book)
        }
    }
}

// The sample closure
let mainFunc: () -> Void = {
    let book = Book(title: "Alice in Wonderland", author: "Lewis Carroll", year: 1865)
    book.display()
    book.displaySlim()

    let books = [
        Book(title: "Sherlock Holmes", author: "Arthur Conan Doyle", year: 1887),
        Book(title: "Hamlet", author: "William Shakespeare", year: 1603),
        Book(title: "I am a Cat. I have, as yet, no name.", author: "Soseki Natsume", year: 1905)
    ]
    Book.listing(list: books)
}

func main() {
    mainFunc()
}

main()
