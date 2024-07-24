import Foundation

func main(){
    let arguments = CommandLine.arguments
    for argument in arguments {
        print("--------------------")
        print(argument)
        print("--------------------")
        print("")
    }
}

main()
