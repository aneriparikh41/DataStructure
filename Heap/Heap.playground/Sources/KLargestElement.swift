import Foundation

// Also equal to sort a K sorted element, use min heap and prepare a array with pop out values(store it in result arr) and then empty the heap will give sorted array
// eg: [6,5,3,2,7,10] k = 4 means 6 belongs within that 4 places of numbers hence half sorted
public func kLargestElement(arr: [Int], k: Int) -> Int {
    var minHeap = Heap<Int>(array: arr, sort: <)

    for i in arr {
        minHeap.insert(i)
        if minHeap.count > k {
            minHeap.remove()
        }
    }
    return minHeap.peek()!
}
