import Foundation


public func maxPathSum(root: Tree?,_ maximum: inout Int) -> Int {
    if root == nil { return 0 }

    let lh = maxPathSum(root: root?.left, &maximum)
    let rh = maxPathSum(root: root?.right, &maximum)
    maximum = max(maximum, (lh + rh + root!.node))

    return root!.node + max(lh, rh)
}
