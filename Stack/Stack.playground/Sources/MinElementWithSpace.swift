import Foundation

var s = Stack<Int>()
var ss = Stack<Int>()
var minimum = 0

public func StackMinElement(arr: [Int]) {
    for i in arr {
        push(value: i)
    }
    minimum = getMin()
    print("Stack's min element: \(minimum)")
    pop()
    minimum = getMin()
    print("Stack's min element: \(minimum)")

}

public func getMin() -> Int {
    if ss.isEmpty() {
        return -1
    }
    return ss.top()!
}

public func push(value: Int) {
    s.push(value)
    if ss.isEmpty() || (ss.top() ?? 0 >= value) {
        ss.push(value)
    }
}

public func pop() {
    if !s.isEmpty() {
        let ans = s.top()
        s.pop()
        if ans == ss.top() {
            ss.pop()
        }
    }
}
