import Foundation


var s3 = Stack<Int>()
var resultArr3 = [Int]()

public func nearestSmallerToLeft(inputArray: [Int]) {
    for i in inputArray {
        if s3.isEmpty() {
            resultArr3.append(-1)
        }
        else if s3.top()! < i {
            resultArr3.append(s3.top()!)
        }
        else if s3.top()! >= i {
            while !s3.isEmpty() && s3.top()! >= i {
                s3.pop()
            }
            if s3.isEmpty() {
                resultArr3.append(-1)
            } else {
                resultArr3.append(s3.top()!)
            }
        }
        s3.push(i)
    }

    print("NearestSmallerToLeft: \(resultArr3)")
}




