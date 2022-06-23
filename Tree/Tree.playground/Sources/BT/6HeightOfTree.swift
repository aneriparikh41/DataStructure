import Foundation

public func heightOfBST(root: Tree?) -> Int {
    if root == nil {
        return 0
    }
    let lh = heightOfBST(root: root?.left)
    let rh = heightOfBST(root: root?.right)

    return 1 + max(lh, rh)
}
