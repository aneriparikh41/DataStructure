import Foundation

public func rightViewTree(root: Tree?) {
    if root == nil {
        return
    }
    print(root!.node)
    rightViewTree(root: root?.right)
}
