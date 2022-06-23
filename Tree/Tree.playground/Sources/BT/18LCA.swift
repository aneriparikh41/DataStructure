import Foundation

// LCA : we can also find 2 paths and intersect to find node. But that will take up 2 O(N) space and 2 O(N) iterations
// Optimised way:

public func lca(_ root: Tree?, _ n1: inout Int, _ n2: inout Int) -> Int {
    if root == nil {
        return 0
    }
    if root?.node == n1 || root?.node == n2 {
        return root!.node
    }

    let l = lca(root?.left, &n1, &n2)
    let r = lca(root?.right, &n1, &n2)

    if l == n1 && r == n2 || l == n2 && r == n1 {
        return root!.node
    }

    return max(l,r)
}
