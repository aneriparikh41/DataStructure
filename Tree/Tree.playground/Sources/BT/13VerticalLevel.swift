import Foundation

public func verticalOrder(_ root: Tree?) {
    let q = QueueTuple<Tree?, Int>()
    var map = [Int: [Int]]() // [x] : [Node]

    if root == nil { return }
    q.push(root, x: 0, y: 0)

    while(!q.isEmpty()) {
        var count = q.size()

        while count > 0 {
            let top = q.pop()
            if let _ = map[top!.1] {
                map[top!.1]!.append(top!.0!.node)
            } else {
                map[top!.1] = [top!.0!.node]
            }
            if let top = top, top.0?.left != nil {
                q.push(top.0?.left, x: (top.1)-1, y: (top.2)+1)
            }
            if let top = top, top.0?.right != nil {
                q.push(top.0?.right, x: (top.1)+1, y: (top.2)+1)
            }
            count = count - 1
        }
    }
    let keys = map.sorted(by: {$0.0 < $1.0})
    for key in keys {
        print("\(key.key) : \(key.value)")
    }
}
