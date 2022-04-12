import Foundation


var s2 = Stack<Int>()
var resultArr2 = [Int]()

public func nearestGreaterToRight(inputArray: [Int]) {
    for i in inputArray.reversed() {
        if s2.isEmpty() {
            resultArr2.append(-1)
        }
        else if s2.top()! > i {
            resultArr2.append(s2.top()!)
        }
        else if s2.top()! <= i {
            while !s2.isEmpty() && s2.top()! <= i {
                s2.pop()
            }
            if s2.isEmpty() {
                resultArr2.append(-1)
            } else {
                resultArr2.append(s2.top()!)
            }
        }
        s2.push(i)
    }

    resultArr2.reverse()
    print("NearestGreaterToRight: \(resultArr2)")
}




