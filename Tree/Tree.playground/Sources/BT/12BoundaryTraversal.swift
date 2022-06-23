import Foundation

var res = [Int]()
private func isLeaf(_ root: Tree?) -> Bool {
    if root?.left == nil && root?.right == nil {
        return true
    }
    return false
}

private func traverseLeft(_ root: Tree?) {
    var curr = root?.left

    while (curr != nil) {
        if isLeaf(curr) { return }
        res.append(curr!.node)
        if curr?.left != nil {
            curr = curr?.left
        } else {
            curr = curr?.right
        }
    }
}

private func traverseRight(_ root: Tree?) {
    var curr = root?.right
    var right = [Int]()

    while (curr != nil) {
        if isLeaf(curr) { return }
        right.append(curr!.node)
        if curr?.right != nil {
            curr = curr?.right
        } else {
            curr = curr?.left
        }
    }
    res = res + right.reversed()
}

private func traverseLeaf(_ root: Tree?) {
    if isLeaf(root) {
        res.append(root!.node)
        return
    }

    if root?.left != nil { traverseLeaf(root?.left) }
    if root?.right != nil { traverseLeaf(root?.right) }

}

// Traverse in anticlock wise direction
public func boundaryTraversal(_ root: Tree?) {
    if root == nil {
        return
    }
    if !isLeaf(root) {
        res.append(root!.node)
    } else {
        res.append(root!.node)
        return
    }
    traverseLeft(root)
    traverseLeaf(root)
    traverseRight(root)
    print(res)
}
