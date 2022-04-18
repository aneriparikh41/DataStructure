import Foundation

public func Reverse(_ ll: ListNode?) -> ListNode? {
    var head = ll
    var curr = ll
    var next: ListNode? = nil
    var prev: ListNode? = nil

    while curr != nil {
        next = curr?.next
        curr?.next = prev
        prev = curr
        curr = next
    }
    head = prev
    return head
}

public func printLL(_ ll: ListNode?) {
    var curr = ll
    while curr != nil {
        print(curr!.val)
        curr = curr?.next
    }
}
