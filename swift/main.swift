import Foundation

func main(){
switch CommandLine.argc - 1 {
    case 0:
        print("============")
        print("No arguments")
    case 1:
        print("============")
        print("One argument")
        print(CommandLine.arguments[1])
    default:
        print("Many arguments")
        print(CommandLine.arguments[1])
        print(CommandLine.argc - 1)
    }
}

main()
