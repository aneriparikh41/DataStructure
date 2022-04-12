import Foundation

public func heightOfBST(root: Tree?) -> Int {
    if root == nil {
        return 0
    }
    var lh = heightOfBST(root: root?.left)
    var rh = heightOfBST(root: root?.right)

    return 1 + max(lh, rh)
}
