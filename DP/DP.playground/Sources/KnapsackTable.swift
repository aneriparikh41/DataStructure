import Foundation

public func knapsackTable(wgt: [Int], val: [Int], W: Int, n: Int) -> Int {

    // t[n+1][W+1] = t[4][5]
    var t = [[Int?]](repeating: [Int?](repeating: nil, count: W+1), count: n+1)

    // Base Condition
    for i in 0...n {
        for j in 0...W {
            if i == 0 || j == 0 {
                t[i][j] = 0
            }
        }
    }

    for i in 1...n {
        for j in 1...W {
            if wgt[i-1] <= j {
                t[i][j] = max(val[i-1] + t[i-1][j-wgt[i-1]]!, t[i-1][j]!)
            }
            else {
                t[i][j] = t[i-1][j]!
            }
        }
    }
    return t[n][W]!
}
