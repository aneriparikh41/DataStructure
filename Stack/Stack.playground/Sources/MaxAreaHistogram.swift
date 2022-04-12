import Foundation


public func MAH(inputArr: [Int]) {

    var nsrIndex = [Int]()
    var nslIndex = [Int]()

    let nsrStack = StackTuple()
    var nsrResultArr = [Int]()

    let nslStack = StackTuple()
    var nslResultArr = [Int]()

    var width = [Int]()
    var max: Int = 0

    nsrIndex = nearestSmallerToRightIndex(inputArray: inputArr)
    print("NSR: \(nsrIndex)")
    nslIndex = nearestSmallerToLeftIndex(inputArray: inputArr)
    print("NSL: \(nslIndex)")

    for i in 0..<nsrIndex.count {
        width.append(nsrIndex[i] - nslIndex[i] - 1)
    }

    print("Width: \(width)")

    for i in 0..<inputArr.count {
        if (max < (width[i] * inputArr[i])) {
            max = (width[i] * inputArr[i])
        }
    }

    print("MAH : \(max)")

    func nearestSmallerToRightIndex(inputArray: [Int]) -> [Int] {
        var i = inputArray.count - 1
        while i >= 0  {
            if nsrStack.isEmpty() {
                nsrResultArr.append(inputArray.count)
            }
            else if nsrStack.top()!.1 < inputArray[i] {
                nsrResultArr.append(nsrStack.top()!.0)
            }
            else if nsrStack.top()!.1 >= i {
                while !nsrStack.isEmpty() && nsrStack.top()!.1 >= inputArray[i] {
                    nsrStack.pop()
                }
                if nsrStack.isEmpty() {
                    nsrResultArr.append(inputArray.count)
                } else {
                    nsrResultArr.append(nsrStack.top()!.0)
                }
            }
            nsrStack.push((i, inputArray[i]))
            i = i - 1
        }

        nsrResultArr.reverse()
        return nsrResultArr
    }

    func nearestSmallerToLeftIndex(inputArray: [Int]) -> [Int] {
        for i in 0..<inputArray.count {
            if nslStack.isEmpty() {
                nslResultArr.append(-1)
            }
            else if nslStack.top()!.1 < inputArray[i] {
                nslResultArr.append(nslStack.top()!.0)
            }
            else if nslStack.top()!.1 >= inputArray[i] {
                while !nslStack.isEmpty() && nslStack.top()!.1 >= inputArray[i] {
                    nslStack.pop()
                }
                if nslStack.isEmpty() {
                    nslResultArr.append(-1)
                } else {
                    nslResultArr.append(nslStack.top()!.0)
                }
            }
            nslStack.push((i, inputArray[i]))
        }

        return nslResultArr
    }

}
