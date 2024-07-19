import Foundation

print("Hello, World!")

switch CommandLine.argc {
case 1:
    print("No arguments")
case 2:
    print("One argument")
default:
    print("Many arguments")
}
