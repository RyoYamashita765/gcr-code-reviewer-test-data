import Foundation

print("Hello, World!")

switch CommandLine.argc {
case 1:
    print("No arguments")
    print(CommandLine.arguments[0])
case 2:
    print("One argument")
    print(CommandLine.argc)
    print(CommandLine.arguments[0])
    print(CommandLine.arguments[1])
    print(CommandLine.arguments[1].uppercased())
default:
    print("Many arguments")
    print(CommandLine.argc)
    print(CommandLine.arguments)
    print(CommandLine.arguments[0])
    print(CommandLine.arguments[1])
}
