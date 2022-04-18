import Foundation

public func deleteInStack(s: inout Stack<Int>, size: Int) -> Stack<Int> {
    if s.isEmpty() {
        return s
    }

    solve(&s, k: (size/2+1))
    return s
}

public func solve(_ s: inout Stack<Int>, k: Int) {
    if k == 1 {
        s.pop()
        return
    }

    let last = s.top()!
    s.pop()
    solve(&s, k: k-1)
    s.push(last)
    return
}
