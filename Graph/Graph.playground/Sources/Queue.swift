import Foundation

public class Queue<T> {

    var array = [T]()

    public func push(_ val: T) {
        array.append(val)
    }
    public func pop() -> T? {
        if !isEmpty() {
            let val = array[0]
            array.remove(at: 0)
            return val
        }
        return nil
    }

    public func isEmpty() -> Bool {
        return array.isEmpty
    }

    public func size() -> Int {
        return array.count
    }
}

public class QueueTuple<T, S> {

    var array = [(T,S)]()

    public func push(_ val: T,_ x: S) {
        array.append((val, x))
    }
    public func pop() -> (T,S)? {
        if !isEmpty() {
            let val = array[0]
            array.remove(at: 0)
            return val
        }
        return nil
    }

    public func isEmpty() -> Bool {
        return array.isEmpty
    }

    public func size() -> Int {
        return array.count
    }
}

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
