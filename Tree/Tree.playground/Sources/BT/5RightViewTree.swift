import Foundation

public var arrR = [Int]()
public func rightViewTree(root: Tree?,_ level: Int) {
    if root == nil {
        return
    }

    if level == arrR.count {
        arrR.append(root!.node)
    }
    rightViewTree(root: root?.right, level+1)
    rightViewTree(root: root?.left, level+1)
}
