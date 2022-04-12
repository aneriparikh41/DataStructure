import Foundation


public class Stack<T> {

    var stackArray = [T]()
    var topPtr = -1

    public init() {}

    public func push(_ value: T) {
        stackArray.append(value)
        topPtr = topPtr + 1
    }

    public func pop() {
        if stackArray.isEmpty {
            topPtr = -1
            return 
        }
        topPtr = topPtr - 1
        stackArray.removeLast()
    }

    public func printStack() {
        print(stackArray)
    }

    public func top() -> T? {
        if stackArray.isEmpty {
            return nil
        }
        return stackArray.last
    }

    public func isEmpty() -> Bool {
        return topPtr < 0
    }
}


public class StackTuple {

    var stackArray = [(Int, Int)]()
    var topPtr = -1

    public init() {}

    public func push(_ value: (Int, Int)) {
        stackArray.append(value)
        topPtr = topPtr + 1
    }

    public func pop() {
        if stackArray.isEmpty {
            topPtr = -1
            return
        }
        topPtr = topPtr - 1
        stackArray.removeLast()
    }

    public func printStack() {
        print(stackArray)
    }

    public func top() -> (Int, Int)? {
        if stackArray.isEmpty {
            return nil
        }
        return stackArray.last
    }

    public func isEmpty() -> Bool {
        return topPtr < 0
    }
}
