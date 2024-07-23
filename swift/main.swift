import Foundation

let numbers = [1, 2, 3, 4, 5]
var squaredNumbers: [Int] = []

for number in numbers {
    let squared = number * number
    squaredNumbers.append(squared)
}

print("Squared numbers: \(squaredNumbers)")

let names = ["Alice", "Bob", "Charlie"]
var upperCaseNames: [String] = []

for name in names {
    let upperCaseName = name.uppercased()
    upperCaseNames.append(upperCaseName)
}

print("Uppercase names: \(upperCaseNames)")
