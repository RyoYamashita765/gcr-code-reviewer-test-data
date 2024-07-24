import Foundation

func main(){
    let arguments = CommandLine.arguments
    if arguments.count > 0 {
        print("--- Command Line Arguments ---")
        print("Argument's count: \(arguments.count)")
        print("Hello, \(arguments[1])!")
    } else {
        print("=== No Arguments ===")
        print("Hello, Swift World!")
        print("Lorem ipsum dolor sit amet,")
        print("consectetur adipiscing elit.")
        print("======================")
    }
}

main()
