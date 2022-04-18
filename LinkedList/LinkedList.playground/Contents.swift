var obj = ReverseList()

var ll = ListNode(1)
ll.next = ListNode(2)
ll.next?.next = ListNode(3)
ll.next?.next?.next = ListNode(4)
ll.next?.next?.next?.next = ListNode(5)
var rr = obj.reverseList(ll)
//printLL(rr)

var r = Reverse(ll)
//printLL(r)

var r1 = ReverseUsingRecursion(ll: ll)
printLL(r1)
