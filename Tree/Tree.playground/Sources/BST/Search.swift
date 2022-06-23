import Foundation

var l = false
var r = false

public func search(_ root: Tree?, k: Int) -> Bool {
    if root == nil {
        return false
    }

    if root?.node == k {
        return true
    }
    else if k < root?.node ?? 0 {
        l = search(root?.left, k: k)
    } else if k > root?.node ?? 0 {
        r = search(root?.right, k: k)
    }

    return l || r
}

public func searchBST(_ root: Tree?, k: Int) -> Tree? {
    var root = root
    while (root != nil && root?.node != k) {
        root = k > (root?.node ?? 0) ? root?.right : root?.left
    }

    return root
}

