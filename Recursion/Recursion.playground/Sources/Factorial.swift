import Foundation

var factSum = 1

public func factorial(n: Int) {
    if n == 1{ return }
    factSum = (n * (factorial(n: n-1)))
    print(factSum)
}
