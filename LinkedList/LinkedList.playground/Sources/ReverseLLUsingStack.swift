import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

public class ReverseList {
    var s = Stack<Int>()

    public init() {}
    public func reverseList(_ head: ListNode?) -> ListNode? {

        var node = head
        while node != nil {
            s.push(node!.val)
            node = node?.next
        }

        var reversedNode: ListNode?
        var headR = reversedNode
        while !s.isEmpty() {
            if reversedNode == nil {
                reversedNode = ListNode(s.top()!)
                headR = reversedNode
                s.pop()
            } else {
                headR?.next = ListNode(s.top()!)
                s.pop()
                headR = headR?.next
            }
        }

        return reversedNode
    }
}

public class Stack<T> {

    var stackArray = [T]()
    var topPtr = -1

    public init() {}

    public func push(_ value: T) {
        stackArray.append(value)
        topPtr = topPtr + 1
    }

    public func pop() {
        if stackArray.isEmpty {
            topPtr = -1
            return
        }
        topPtr = topPtr - 1
        stackArray.removeLast()
    }

    public func printStack() {
        print(stackArray)
    }

    public func top() -> T? {
        if stackArray.isEmpty {
            return nil
        }
        return stackArray.last
    }

    public func isEmpty() -> Bool {
        return topPtr < 0
    }
}


