import Foundation


public func levelOrderTraversal(root: Tree?) {
    let queue = Queue<Tree>()

    if root == nil {
        return
    }

    queue.push(root!)

    while(!queue.isEmpty()) {
        var nodeCount = queue.size()
        while nodeCount > 0 {
            let node = queue.pop()
            print(node!.node)

            if node?.left != nil {
                queue.push(node!.left!)
            }
            if node?.right != nil {
                queue.push(node!.right!)
            }
            nodeCount = nodeCount - 1
        }
        print("\n")
    }
}
