import Foundation

// Stock Span Prob: Consecutive Smaller or equal before it
// index i/p:  0, 1, 2, 3, 4, 5, 6
//  i/p arr : 100,80,60,70,60,75,85
// NGL Index: -1, 0, 1, 1, 3, 1, 0
//  o/p arr :  1, 1,  1, 2, 1, 4, 6

var s5 = StackTuple()
var nglResultArr = [Int]()
var stockSpanArr = [Int]()
public func StockSpan(arr: [Int]) {
    nearestGreaterToLeftIndex(inputArray: arr)

    for i in 0..<nglResultArr.count {
        stockSpanArr.append(i - nglResultArr[i])
    }

    print("Stock Span: \(stockSpanArr)")
}

public func nearestGreaterToLeftIndex(inputArray: [Int]) {
    for i in 0..<inputArray.count {
        if s5.isEmpty() {
            nglResultArr.append(-1)
        }
        else if s5.top()!.1 > inputArray[i] {
            nglResultArr.append(s5.top()!.0)
        }
        else if s5.top()!.1 <= inputArray[i] {
            while !s5.isEmpty() && (s5.top()!.1 <= inputArray[i]) {
                s5.pop()
            }
            if s5.isEmpty() {
                nglResultArr.append(-1)
            } else {
                nglResultArr.append(s5.top()!.0)
            }
        }
        s5.push((i, inputArray[i]))
    }
}
