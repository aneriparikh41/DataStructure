import Foundation


public func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var curr = head
    var prev: ListNode? = nil
    var isSimilar = false

    while (curr?.next != nil) {
        if curr?.next?.val == curr?.val {
            curr = curr?.next
            isSimilar = true
            continue
        }

        if isSimilar {
            curr = curr?.next
            prev?.next = curr
            isSimilar = false
        } else {
            prev = curr
            curr = curr?.next
        }
    }

    return head
}
