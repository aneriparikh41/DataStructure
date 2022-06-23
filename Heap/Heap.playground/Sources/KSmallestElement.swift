import Foundation

public func kSmallestElement(arr: [Int], k: Int) -> Int {
    var maxHeap = Heap<Int>(array: arr, sort: >)

    for i in arr {
        maxHeap.insert(i)
        if maxHeap.count > k {
            maxHeap.remove()
        }
    }
    return maxHeap.peek()!
}
