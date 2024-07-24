import Foundation

func main(){
    let arguments = CommandLine.arguments
    if arguments.count >= 1 {
        print("Arguments count: \(arguments.count)")
        print("Hello, \(arguments[1])!")
    } else {
        print("Hello, World!")
        print("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
        print("Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
    }
}

main()
