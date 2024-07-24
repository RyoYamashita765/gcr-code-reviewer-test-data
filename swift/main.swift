import Foundation

func main(){
    let arguments = CommandLine.arguments
    if arguments.count > 0 {
        print("--- Command Line Arguments ---")
        print("Arguments: \(arguments.count)")
        print("Hello, \(arguments[1])!")
        print("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
        print("Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
    } else {
        print("=== No Arguments ===")
        print("Hello, World!")
        print("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
        print("Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
        print("Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris")
        print("======================")
    }
}

main()
