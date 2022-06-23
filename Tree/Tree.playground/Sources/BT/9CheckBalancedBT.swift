import Foundation

public func balancedBT(_ root: Tree?) -> Bool {
    if root == nil { return true }

    let left = heightOfBST(root: root?.left)
    let right = heightOfBST(root: root?.right)

    if abs(left-right) > 1 {
        return false
    }
    let leftB = balancedBT(root?.left)
    let rightB = balancedBT(root?.right)

    if !leftB || !rightB { return false }

    return true
 }
//O(N*N) O(N)

public func balancedBST(root: Tree?) -> Int {
    if root == nil {
        return 0
    }
    let lh = heightOfBST(root: root?.left)
    let rh = heightOfBST(root: root?.right)

    if abs(lh - rh) > 1 { return -1 }
    if lh == -1 || rh == -1 { return -1 }
    return 1 + max(lh, rh)
}
// O(N) O(N)
