import Foundation

public class BracesBalancing {
    var openingBraces = ["{","[","("]
    var closingBraces = ["}","]",")"]
    var s = Stack<Character>()
    var inputArray: String

    public init(arr: String) {
        self.inputArray = arr
    }

    public func isBalanced() -> Bool {
        for char in inputArray {
            if openingBraces.contains("\(char)") {
                s.push(char)
            }
            else if closingBraces.contains("\(char)") {
                if let top = s.top(),
                   let index = openingBraces.firstIndex(of: "\(top)"),
                   "\(char)" == closingBraces[index] {
                    s.pop()
                } else {
                    return false
                }
            }
        }
        if s.isEmpty() {
            return true
        }
        return false
    }
}
