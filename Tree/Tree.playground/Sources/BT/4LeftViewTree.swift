import Foundation

public var arrL = [Int]()
public func leftViewTree(root: Tree?,_ level: Int) {
    if root == nil {
        return
    }

    if level == arrL.count {
        arrL.append(root!.node)
    }
    leftViewTree(root: root?.left, level+1)
    leftViewTree(root: root?.right, level+1)
}
