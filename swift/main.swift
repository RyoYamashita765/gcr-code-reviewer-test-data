import Foundation

func main(){
    var a = 1
    while a <= 30 {
        print("[a = \(a)]")
        print("  a + 2 = \(a + 2)")
        print("  a + 4 = \(a + 4)")
        print("  a + 6 = \(a + 6)")
        print("  a + a = \(a + a)")
        print("  a + a + a = \(a + a + a)")
        print("  a * a = \(a * a)")
        print("  a * a + 3 = \(a * a + 3)")
        print("  a * a - 4 = \(a * a - 4)")
        print("  a * a * a = \(a * a * a)")
        print("")
        a += 1
    }
}

main()
