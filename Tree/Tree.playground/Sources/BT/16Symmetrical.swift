import Foundation

// left is a mirror to right ?
public func isSymetricalTrees(_ t1: Tree?) -> Bool {
    return t1 == nil || isMirror(t1?.left, t1?.right)
}

private func isMirror(_ t1: Tree?,_ t2: Tree?) -> Bool {
    if t1 == nil && t2 == nil {
        return true
    }

    return t1?.node == t2?.node && isMirror(t1?.left, t2?.right) && isMirror(t1?.right, t2?.left)
}
