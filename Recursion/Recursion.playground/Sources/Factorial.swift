import Foundation

var factSum = 1

public func factorial(n: Int) -> Int {
    if n == 1 {
        return 1
    }
    return (n * (factorial(n: n-1)))
}
