import Foundation

public func leftViewTree(root: Tree?) {
    if root == nil {
        return
    }
    print(root!.node)
    leftViewTree(root: root?.left)
}
