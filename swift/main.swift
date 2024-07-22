import Foundation

print("Hello, World!")

var a = 1
while a <= 30 {
    print("[a = \(a)]")
    print("  a + 1 = \(a + 1)")
    print("  a + 3 = \(a + 3)")
    print("  a + 5 = \(a + 5)")
    print("  a + a = \(a + a)")
    print("  a + a + a = \(a + a + a)")
    print("  a * a = \(a * a)")
    print("  a * a + 1 = \(a * a + 1)")
    print("  a * a - a = \(a * a - a)")
    print("  a * a * a = \(a * a * a)")
    print("")
    a += 1
}
