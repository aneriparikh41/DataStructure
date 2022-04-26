import Foundation

public func middleElement(ll: ListNode?) -> Int {
    var slow = ll
    var fast = ll

    if ll != nil {
        while(fast != nil && fast?.next != nil) {

            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow?.val ?? -1
    }
    return 0
}
