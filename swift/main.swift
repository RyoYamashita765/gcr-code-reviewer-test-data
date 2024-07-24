import Foundation

func main(){
    let arguments = CommandLine.arguments
    for i in 0..<arguments.count {
        print("")
        print("--------------------")
        print(arguments[i])
        print(arguments[i].count)
        print("--------------------")
        print("")
    }
}

main()
