import Foundation

public func subsetSum(arr: [Int], sum: Int) -> Bool {

    // Array
    var t = [[Bool?]](repeating: [Bool?](repeating: nil, count: sum + 1), count: arr.count + 1)

    // Base Condition
    for i in 0...arr.count {
        for j in 0...sum {
            if i == 0 {
                t[i][j] = false
            }
            if j == 0 {
                t[i][j] = true
            }
        }
    }

    // Induction
    for i in 1...arr.count {
        for j in 1...sum {
            if arr[i-1] <= j {
                t[i][j] = t[i-1][j-arr[i-1]]! || t[i-1][j]!
            } else {
                t[i][j] = t[i-1][j]!
            }
        }
    }
    return t[arr.count][sum]!
}
