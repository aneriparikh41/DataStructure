import Foundation

public var maxi = 0
public func dia1(_ root: Tree?) {
    if root == nil { return }

    let lh = heightOfBST(root: root?.left)
    let rh = heightOfBST(root: root?.right)

    maxi = max(maxi, lh+rh)

    dia1(root?.left)
    dia1(root?.right)
} //O(N*N)


public var maxii = 0
public func diameter(root: Tree?) -> Int {
    if root == nil { return 0 }

    let lh = diameter(root: root?.left)
    let rh = diameter(root: root?.right)

    maxii = max(maxii, lh+rh)

    return 1 + max(lh, rh)
}

