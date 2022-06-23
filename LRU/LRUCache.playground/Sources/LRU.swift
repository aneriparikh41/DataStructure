import Foundation

public class LRUCache {

    private let capacity: Int
    private var hashLL = [Int: DoublyLL]()
    private var head: DoublyLL
    private var tail: DoublyLL

    public init(capacity: Int) {
        self.capacity = capacity
        // creating 2 node: dummy head and tail
        head = DoublyLL(0, 0)
        tail = DoublyLL(0, 0)
        head.next = tail
        tail.pre = head
    }

    // O(1)
    private func addToHead(_ node: DoublyLL) {
        node.next = head.next
        node.next?.pre = node
        head.next = node
        node.pre = head
    }

    // O(1)
    private func delete(_ node: DoublyLL) {
        node.pre?.next = node.next
        node.next?.pre = node.pre
    }

    // O(1)
    public func get(_ key: Int) -> Int {
        if let node = hashLL[key] {
            print("Value of \(key) is \(node.val)")
            delete(node)
            addToHead(node)
            return node.val
        }
        print("No key found")
        return -1
    }
    
    // O(1)
    public func set(_ key: Int, _ value: Int) {
        if let node = hashLL[key] {
            node.val = value

            delete(node)
            addToHead(node)
            print("Value of \(key) is changed to \(node.val)")
        } else {
            let node = DoublyLL(key, value)
            hashLL[key] = node
            if hashLL.count <= capacity {
                addToHead(node)
            } else {
                print("Deleting last node: \(tail.pre!.key) \(hashLL[tail.pre!.key])")
                hashLL.removeValue(forKey: tail.pre!.key)
                delete(tail.pre!)
                addToHead(node)
            }
            print("Node added: \(key): \(node.val)")
        }
    }

    public func printLL() {
        var curr = head
        while curr.next != nil {
            print(curr.val)
            curr = curr.next!
        }
    }
}
