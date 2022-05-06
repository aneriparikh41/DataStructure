import Foundation

// str : abgcba in this which is the largest palindrome str ??
// its abcba -> 5 
public func LPS(_ str: String) -> Int {
    var reversedStr = ""
    for char in str.reversed() {
        reversedStr = reversedStr + "\(char)"
    }
    return LCSTable(str, reversedStr)
}
