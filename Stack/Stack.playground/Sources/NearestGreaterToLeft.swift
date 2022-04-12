import Foundation

    var s1 = Stack<Int>()
    var resultArr1 = [Int]()

    public func nearestGreaterToLeft(inputArray: [Int]) {
        for i in inputArray {
            if s1.isEmpty() {
                resultArr1.append(-1)
            }
            else if s1.top()! > i {
                resultArr1.append(s1.top()!)
            }
            else if s1.top()! <= i {
                while !s1.isEmpty() && s1.top()! <= i {
                    s1.pop()
                }
                if s1.isEmpty() {
                    resultArr1.append(-1)
                } else {
                    resultArr1.append(s1.top()!)
                }
            }
            s1.push(i)
        }

        print("NearestGreaterToLeft: \(resultArr1)")
    }



