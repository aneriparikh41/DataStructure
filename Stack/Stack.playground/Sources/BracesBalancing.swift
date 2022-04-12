import Foundation

public class BracesBalancing {
    var openingBraces = ["{","[","("]
    var closingBraces = ["}","]",")"]
    var s = Stack<String>()
    var inputArray = [String]()

    public init(arr: [String]) {
        self.inputArray = arr
    }

    public func isBalanced() -> Bool {
        for i in inputArray {
            if openingBraces.contains(i) {
                s.push(i)
                //print("Pushing:\(i)")
            }
            else if closingBraces.contains(i) {
                if let top = s.top(),
                   let index = openingBraces.firstIndex(of: top),
                   i == closingBraces[index] {
                    s.pop()
                    //print("Poping:\(i)")
                } else {
                    //print("Couldn't pop element matching for:\(i)")
                    return false
                }
            }
        }
        if s.isEmpty() {
            //print("Stack empty")
            return true
        }
        return false
    }
}
