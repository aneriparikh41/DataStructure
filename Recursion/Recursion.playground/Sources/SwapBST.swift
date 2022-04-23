import Foundation

public func swap(_ root: Tree?) {
    var root = root
    if root == nil {
        return
    }

    if root?.left == nil && root?.right == nil {
        return
    }

    //swapRoot(&root?.left, &root?.right)
    
    swap(root?.left)
    swap(root?.right)

}

public func swapRoot(_ left: inout Tree?, _ right: inout Tree?) {
    let temp = left
    left = right
    right = temp
}
