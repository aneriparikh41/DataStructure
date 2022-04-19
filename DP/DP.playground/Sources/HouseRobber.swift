import Foundation

public func houseRobber(arr: [Int]) -> Int {

    // Array
    var t = [Int](repeating: 0, count: arr.count)

    // Base Condition
    if arr.isEmpty {
        return 0
    }
    if arr.count == 1 {
        return arr[0]
    }

    if arr.count == 2 {
        return max(arr[0],arr[1])
    }

    t[0] = arr[0]
    t[1] = max(arr[0],arr[1])

    // Induction
    for i in 2..<arr.count {
        t[i] = max(arr[i] + t[i-2],t[i-1])
    }

    return t.last!
}
