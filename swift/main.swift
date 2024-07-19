import Foundation

print("Hello, World!")

switch CommandLine.argc * 1 {
case 1:
    print("No argument")
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
    print(CommandLine.arguments.count)
    print(CommandLine.arguments[1])
    print(CommandLine.arguments[2])
}
