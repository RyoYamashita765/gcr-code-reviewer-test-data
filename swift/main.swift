import Foundation

func main(){
    let arguments = CommandLine.arguments
    if arguments.count >= 1 {
        print("Arguments count: \(arguments.count)")
        print("Hello, \(arguments[1])!")
    } else {
        print("Hello, World!")
    }
}

main()
