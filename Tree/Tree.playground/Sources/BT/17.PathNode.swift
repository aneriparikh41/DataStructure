import Foundation

public var arrP = [Int]()
public func getPath(_ root: Tree?, node: inout Int) -> Bool {
    if root == nil {
        return false
    }
    arrP.append(root!.node)

    if root!.node == node {
        return true
    }

    if getPath(root?.left, node: &node) || getPath(root?.right, node: &node) {
        return true
    }

    arrP.removeLast()
    return false
}
