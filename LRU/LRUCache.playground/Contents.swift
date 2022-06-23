import UIKit

var lru = LRUCache(capacity: 5)
lru.set(1, 10)
lru.set(2, 20)
lru.set(3, 30)
lru.set(4, 40)
lru.set(5, 50)
lru.printLL()
lru.get(3)

lru.printLL()

lru.get(1)
lru.printLL()

lru.set(4,100)
lru.printLL()
lru.set(6,70)
lru.printLL()
lru.get(2)
