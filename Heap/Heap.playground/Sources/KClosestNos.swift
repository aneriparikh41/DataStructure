import Foundation

// arr = [5,6,7,8,9] n = 7 k = 3 output = 6,7,8
public func kClosestNumbers(_ arr: [Int], n: Int, k: Int) {

//    var maxHeap = Heap<Int>(array: arr, sort: >)

    var diff = [Int]()

    for arr in arr {
        diff.append(abs(arr - n)) // 2,1,0,1,2
    }

    let res = kLargestElement(arr: diff, k: k) // THis will give us 1,0,1

    // we need the heap functionality to add tuple also with the value then with the (int, int) func we can return the numbers 6,7,8
    // we need to push (2,5) , (1,6) etc in heap where first element does the sorting and second is just a value to return 
}
