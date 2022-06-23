import Foundation

public class DoublyLL {
    var key: Int
    var val: Int
    var pre: DoublyLL?
    var next: DoublyLL?

    init(_ key: Int, _ val: Int) {
        self.val = val
        self.key = key
    }
}
