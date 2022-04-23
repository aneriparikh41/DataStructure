import Foundation

public class Tree {
    var node: Int
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
      / \
     8   9

*/
public func makeTree() -> Tree {
    var tree = Tree(node: 1)
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
