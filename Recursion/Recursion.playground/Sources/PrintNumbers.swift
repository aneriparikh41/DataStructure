import Foundation

public func printNumber(n: Int) {
    if n == 1 {
        print("1")
        return
    }

    printNumber(n: n-1)
    print(n)
}


public func printReverseNumber(n: Int) {
    if n == 1 {
        print("1")
        return
    }
    print(n)
    printReverseNumber(n: n-1)
}
