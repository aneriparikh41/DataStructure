import Foundation

public func sort(_ arr: inout [Int]) {
    if arr.count <= 1 {
        return
    }

    var last = arr.last!
    arr.removeLast()
    sort(&arr)
    insert(&arr, last: &last)
}

public func insert(_ arr: inout [Int], last: inout Int) {
    if arr.isEmpty || arr.last! <= last {
        arr.append(last)
        return
    }

    var temp = arr.last!
    arr.removeLast()
    insert(&arr, last: &last)
    arr.append(temp)
    return
}
