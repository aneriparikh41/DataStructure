import Foundation

public func zigZagOrderTraversal(root: Tree?) {
    let queue = Queue<Tree>()

    if root == nil {
        return
    }

    queue.push(root!)
    var rTL = false

    while(!queue.isEmpty()) {
        var nodeCount = queue.size()
        var arr = [Int]()
        while nodeCount > 0 {
            let node = queue.pop()
            arr.append(node!.node)

            if node?.left != nil {
                queue.push(node!.left!)
            }
            if node?.right != nil {
                queue.push(node!.right!)
            }
            nodeCount = nodeCount - 1
        }
        if rTL {
            arr = arr.reversed()
        }
        print(arr)
        rTL = !rTL
    }
}
