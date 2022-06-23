import Foundation

public func isIdentical(t1: Tree?, t2: Tree?) -> Bool {
    if t1 == nil && t2 == nil {
        return true
    }

    return t1?.node == t2?.node && isIdentical(t1: t1?.left, t2: t2?.left) && isIdentical(t1: t1?.right, t2: t2?.right)
}
