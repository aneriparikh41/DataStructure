import Foundation

public func equalPartition(arr: [Int]) -> Bool {
    var sum = 0
    for element in arr {
        sum = sum + element
    }
    if sum%2 != 0 {
        return false
    }

    if sum%2 == 0 {
        return subsetSum(arr: arr, sum: sum/2)
    }

    return false
}
