import Foundation

// i/p: 3, 0, 0, 2, 0 ,4
// tap: 0, 3, 3, 1, 3, 0 = 10
// water holding capacity of each tower

var maxL = [Int]()
var maxR = [Int]()
var tapping = [Int]()
var sum = 0
var min = 0

public func RainWaterTapping(arr: [Int]) {

    getMaxL(arr)
    getMaxR(arr)

    for i in 0..<arr.count {
        min = maxL[i] < maxR[i] ? maxL[i] : maxR[i]
        sum = sum + (min - arr[i])
    }

    print("Rain Water Tapped: \(sum)")

    func getMaxL(_ arr: [Int]) {
        var max = 0
        for i in 0..<arr.count {
            if arr[i] > max {
                maxL.append(arr[i])
                max = arr[i]
            } else {
                maxL.append(max)
            }
        }
    }

    func getMaxR(_ arr: [Int]) {
        var max = 0
        var i = arr.count-1
        while i >= 0 {
            if arr[i] > max {
                maxR.append(arr[i])
                max = arr[i]
            } else {
                maxR.append(max)
            }
            i = i - 1
        }
    }
}
