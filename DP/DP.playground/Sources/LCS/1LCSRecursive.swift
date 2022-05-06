import Foundation

// LCS a1 = "abcdgh" a2="abedfhr"  ans = 4 as 4 common elements in both strings

public func LCSRecursive(_ str1: String,_ str2: String) -> Int {
    var arr1 = [Character]()
    var arr2 = [Character]()

    for char in str1 {
        arr1.append(char)
    }

    for char in str2 {
        arr2.append(char)
    }

    return lcs(arr1, arr2, arr1.count, arr2.count)
}

func lcs(_ X: [Character], _ Y: [Character], _ m: Int, _ n: Int) -> Int {
    if m == 0 || n == 0 {
        return 0
    }

    if X[m-1] == Y[n-1] {
        return 1 + lcs(X, Y, m-1, n-1)
    } else {
        return max(lcs(X, Y, m-1, n), lcs(X, Y, m, n-1))
    }
}
