import Foundation

print("Hello, World!")

switch CommandLine.argc * 1 {
case 1:
    print("No arguments")
    print("path: \(CommandLine.arguments[0])")
case 2:
    print("One argument")
    print(CommandLine.argc)
    print("path: \(CommandLine.arguments[0])")
    print("arg: \(CommandLine.arguments[1])")
    print(CommandLine.arguments)
default:
    print("Many arguments")
    print(CommandLine.argc)
    print(CommandLine.arguments[0])
    print(CommandLine.arguments[1])
    print(CommandLine.arguments[2])
}
