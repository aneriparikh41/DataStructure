import Foundation

// Memoization
// Recursion + Table

var t1 = [[Int]]()

public func knapsackRecursion(wgt: [Int], val: [Int], W: Int, n: Int) -> Int {

    t1 = Array(repeating: Array(repeating: -1, count: 1002), count: 1002)
    return knapsack(wgt: wgt, val: val, W: W, n: n)
}

public func knapsack(wgt: [Int], val: [Int], W: Int, n: Int) -> Int {
    if ( W == 0 || n == 0) {
        return 0
    }

    if t1[n][W] != -1 {
        return t1[n][W]
    }

    if wgt[n-1] <= W {
        t1[n][W] = max(val[n-1] + knapsack(wgt: wgt, val: val, W: W-wgt[n-1], n: n-1), knapsack(wgt: wgt, val: val, W: W, n: n-1))
        return t1[n][W]
    }

    else if wgt[n-1] > W {
        t1[n][W] = knapsack(wgt: wgt, val: val, W: W, n: n-1)
        return t1[n][W]
    }

    return 0
}

// Complexity - 2^n
