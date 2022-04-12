import Foundation

var s4 = Stack<Int>()
var resultArr4 = [Int]()

public func nearestSmallerToRight(inputArray: [Int]) {
    for i in inputArray.reversed() {
        if s4.isEmpty() {
            resultArr4.append(-1)
        }
        else if s4.top()! < i {
            resultArr4.append(s4.top()!)
        }
        else if s4.top()! >= i {
            while !s4.isEmpty() && s4.top()! >= i {
                s4.pop()
            }
            if s4.isEmpty() {
                resultArr4.append(-1)
            } else {
                resultArr4.append(s4.top()!)
            }
        }
        s4.push(i)
    }

    resultArr4.reverse()
    print("NearestSmallerToRight: \(resultArr4)")
}

