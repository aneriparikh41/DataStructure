import Foundation

public func ReverseUsingRecursion(ll: ListNode?) -> ListNode? {

    if ll == nil || ll?.next == nil {
        return ll
    }

    let head = ll
    var rest = head?.next

    rest = ReverseUsingRecursion(ll: head?.next)

    head?.next?.next = head
    head?.next = nil
    return rest
}
