import Foundation

public func minNoOfPlatform(_ arr: [Int], _ dep: [Int]) -> Int {

    var arr = arr
    arr = arr.sorted(by: <)

    var dep = dep
    dep = dep.sorted(by: <)

    var i = 1
    var j = 0
    var noOfPlatform = 1
    var result = 1
    let n = arr.count

    while (i<n && j<n) {
        if arr[i] <= dep[j] {
            noOfPlatform = noOfPlatform + 1
            i = i + 1
        }

        else if arr[i] > dep[j] {
            noOfPlatform = noOfPlatform - 1
            j = j + 1
        }

        if noOfPlatform > result {
            result = noOfPlatform
        }
    }

    return result
}

// can also be done using min_Heap where arr time is sorted and passing the dep time in min_Heap everytime and if arr[i]<= heap.peek() then count = count + + else pop()

