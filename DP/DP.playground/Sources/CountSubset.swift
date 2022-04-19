import Foundation

public func countSubsetSum(arr: [Int], sum: Int) -> Int {

    // Array
    var t = [[Int?]](repeating: [Int?](repeating: nil, count: sum + 1), count: arr.count + 1)

    // Base Condition
    for i in 0...arr.count {
        for j in 0...sum {
            if i == 0 {
                t[i][j] = 0
            }
            if j == 0 {
                t[i][j] = 1
            }
        }
    }

    // Induction
    for i in 1...arr.count {
        for j in 1...sum {
            if arr[i-1] <= j {
                t[i][j] = t[i-1][j-arr[i-1]]! + t[i-1][j]!
            } else {
                t[i][j] = t[i-1][j]!
            }
        }
    }
    return t[arr.count][sum]!
}
