import Foundation

func main(){
switch CommandLine.argc {
    case 1:
        print("No arguments")
    case 2:
        print("One argument")
        print(CommandLine.arguments[1])
    default:
        print("Many arguments")
    }
}

main()
