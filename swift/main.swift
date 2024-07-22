import Foundation

print("Hello, World!")

var a = 1
while a <= 10 {
    print("a = \(a)")
    print("  a + 1 = \(a + 1)")
    print("  a + 2 = \(a + 2)")
    print("  a + 4 = \(a + 4)")
    print("  a + a = \(a + a)")
    print("  a + a + a = \(a + a + a)")
    print("  a * a = \(a * a)")
    print("  a * a + a = \(a * a + a)")
    print("  a * a - a = \(a * a - a)")
    print("  a * a * a = \(a * a * a)")
    print("")
    a += 1
}
