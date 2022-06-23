import Foundation

// eg: arr = [1,1,1,3,2,2,4] k = 2
// output : 1,2

public func kFrequentElements(arr: [Int], k: Int) -> [Int] {
    // put in hash map
    var hashMap = [Int: Int]()

    for arr in arr {
        hashMap[arr] = (hashMap[arr] ?? 0) + 1
    }

//   [1: 3
//    2: 2
//    3: 1
//    4: 1
//    ]
// put this in min heap by value, key -> (3,1) (2,2) and put k = 2
// we will return the max frequent values keys: 1,2
// second element in tuple is to return, sorting is happening on first one

    return []

    // For frequency sort dont pop and push everything in heap, and pop the values and print acc to frequency
}
