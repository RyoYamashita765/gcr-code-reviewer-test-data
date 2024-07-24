import Foundation

func main(){
switch CommandLine.arguments.count {
    case 1:
        print("------------")
        print("No arguments")
    case 2:
        print("------------")
        print("One argument")
        print(CommandLine.arguments[1])
    default:
        print("Many arguments")
        print(CommandLine.arguments[1])
        print(CommandLine.arguments[2])
    }
}

main()
