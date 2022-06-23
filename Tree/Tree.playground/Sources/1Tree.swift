import Foundation

import Foundation

public class Tree {
    public var node: Int
    var left: Tree?
    var right: Tree?

    init(node: Int) {
        self.node = node
        self.left = nil
        self.right = nil
    }
}

/*
            1
          /   \
         2      3
        / \    / \
       4   5  6   7
      / \         \
     8   9        10

*/
public func makeTree() -> Tree {
    let tree = Tree(node: 1)
    tree.left = Tree(node: 2)
    tree.right = Tree(node: 3)
    tree.left?.left = Tree(node: 4)
    tree.left?.right = Tree(node: 5)
    tree.right?.left = Tree(node: 6)
    tree.right?.right = Tree(node: 7)
    tree.left?.left?.left = Tree(node: 8)
    tree.left?.left?.right = Tree(node: 9)
    tree.right?.right?.right = Tree(node: 10)
    return tree
}

/*
            1
          /   \
         2      3
        / \    / \
       4   5  6   7
      / \
     8   9

*/

public func makeTree2() -> Tree {
    let tree = Tree(node: 1)
    tree.left = Tree(node: 2)
    tree.right = Tree(node: 3)
    tree.left?.left = Tree(node: 4)
    tree.left?.right = Tree(node: 5)
    tree.right?.left = Tree(node: 6)
    tree.right?.right = Tree(node: 7)
    tree.left?.left?.left = Tree(node: 8)
    tree.left?.left?.right = Tree(node: 9)
    return tree
}

/*
            1
          /   \
         2      3
        / \    /  \
       4   5   6   7
      / \         /
     8   9      10

*/
public func makeTree3() -> Tree {
    let tree = Tree(node: 1)
    tree.left = Tree(node: 2)
    tree.right = Tree(node: 3)
    tree.left?.left = Tree(node: 4)
    tree.left?.right = Tree(node: 5)
    tree.right?.right = Tree(node: 7)
    tree.right?.left = Tree(node: 6)
    tree.left?.left?.left = Tree(node: 8)
    tree.left?.left?.right = Tree(node: 9)
    tree.right?.right?.left = Tree(node: 10)
    return tree
}

/*
            1
          /   \
         2      2
        / \    /  \
       4   5   5   4
      / \         / \
     8   9       9   8

*/
public func makeTree4() -> Tree {
    let tree = Tree(node: 1)
    tree.left = Tree(node: 2)
    tree.right = Tree(node: 2)
    tree.left?.left = Tree(node: 4)
    tree.left?.right = Tree(node: 5)
    tree.right?.right = Tree(node: 4)
    tree.right?.left = Tree(node: 5)
    tree.left?.left?.left = Tree(node: 8)
    tree.left?.left?.right = Tree(node: 9)
    tree.right?.right?.left = Tree(node: 9)
    tree.right?.right?.right = Tree(node: 8)

    return tree
}

// BST

/*
            10
          /    \
         7      13
        / \    /  \
       5   9  11   15
      / \         / \
     3   6       14   20

*/
public func makeBST() -> Tree {
    let tree = Tree(node: 10)
    tree.left = Tree(node: 7)
    tree.right = Tree(node: 13)
    tree.left?.left = Tree(node: 5)
    tree.left?.right = Tree(node: 9)
    tree.right?.right = Tree(node: 15)
    tree.right?.left = Tree(node: 11)
    tree.left?.left?.left = Tree(node: 3)
    tree.left?.left?.right = Tree(node: 6)
    tree.right?.right?.left = Tree(node: 14)
    tree.right?.right?.right = Tree(node: 20)

    return tree
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

    var array = [(T,S,S)]()

    public func push(_ val: T, x: S, y: S) {
        array.append((val, x, y))
    }
    public func pop() -> (T,S,S)? {
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

