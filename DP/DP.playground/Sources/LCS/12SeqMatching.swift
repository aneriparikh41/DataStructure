import Foundation

// A= xyz B =adxyhz A is a seq of B

public func seQuenceMatch(_ str1: String, _ str2: String) -> Bool {
    let num = LCSTable(str1, str2)
    if num == str1.count {
        return true
    }
    return false
}
