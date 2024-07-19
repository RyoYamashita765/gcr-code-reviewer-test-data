import Foundation

print("Hello, World!")

switch CommandLine.argc {
case 1:
    print("No arguments")
case 2:
    print("One argument")
    print(CommandLine.arguments[1])
default:
    print("Many arguments")
    print(CommandLine.argc)
    print(CommandLine.arguments)
}
