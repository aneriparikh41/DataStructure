import Foundation

// LCS a1 = "abcdgh" a2="abedfhr"  ans = 4 as 4 common elements in both strings
// we are storing it in table while recursion to save the duplicate calls on subtree

var t = [[Int]](repeating: [Int](repeating: -1, count: 1001), count: 1001)

public func LCSMemoization(_ str1: String,_ str2: String) -> Int {
    var arr1 = [Character]()
    var arr2 = [Character]()

    for char in str1 {
        arr1.append(char)
    }

    for char in str2 {
        arr2.append(char)
    }

    return lcsM(arr1, arr2, arr1.count, arr2.count)
}

func lcsM(_ X: [Character], _ Y: [Character], _ m: Int, _ n: Int) -> Int {
    if m == 0 || n == 0 {
        return 0
    }

    if t[m][n] != -1 {
        return t[m][n]
    }

    if X[m-1] == Y[n-1] {
        t[m][n] = 1 + lcs(X, Y, m-1, n-1)
        return t[m][n]
    } else {
        t[m][n] = max(lcs(X, Y, m-1, n),lcs(X, Y, m, n-1))
        return t[m][n]
    }
}
