import Foundation

func main(){
    let arguments = CommandLine.arguments
    for argument in arguments {
        print("")
        print("--------------------")
        print(argument)
        print(argument.count)
        print("--------------------")
        print("")
    }
}

main()
