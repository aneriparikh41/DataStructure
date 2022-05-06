import Foundation

// Super seq means super set of 2 strings
// hence its A+B- AnB
public func LCSSuperSeq(_ str1: String,_ str2: String) -> Int {
    return str1.count + str2.count - LCSTable(str1, str2)
}
