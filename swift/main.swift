import Foundation

func main(){
    let arguments = CommandLine.arguments
    if arguments.count > 0 {
        print("--- Command Line Arguments ---")
        print("Argument's count: \(arguments.count)")
        print("Hello, \(arguments[1])!")
        print("Lorem ipsum dolor sit amet,")
        print("consectetur adipiscing elit.")
    } else {
        print("=== No Arguments ===")
        print("Hello, Swift World!")
        print("Lorem ipsum dolor sit amet,")
        print("consectetur adipiscing elit.")
        print("Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris")
        print("======================")
    }
}

main()
