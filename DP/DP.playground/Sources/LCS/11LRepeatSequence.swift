import Foundation

// eg: AABEBCDD ans = ABD
// that is repeating 2 times
// put the same string twice in LCS
// Longest repeating subsequence

public func LRS(_ str: String) -> Int {
    var arr1 = [Character]()
    var arr2 = [Character]()

    for char in str {
        arr1.append(char)
    }

    for char in str {
        arr2.append(char)
    }
    let n = arr1.count
    let m = arr2.count

    // t[n+1][m+1] n = arr1 m = arr2
    var t = [[Int?]](repeating: [Int?](repeating: nil, count: m+1), count: n+1)

    for i in 0...n {
        for j in 0...m {
            if i == 0 || j == 0 {
                t[i][j] = 0
            }
        }
    }

    for i in 1...n {
        for j in 1...m {
            if arr1[i-1] == arr2[j-1] && (i != j) { // imp cond
                t[i][j] = 1 + t[i-1][j-1]!
            }
            else {
                t[i][j] = max(t[i-1][j]!, t[i][j-1]!)
            }
        }
    }

    return t[n][m]!
}
