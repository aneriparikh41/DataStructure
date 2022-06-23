import Foundation

public func inOrder(_ root: Tree?) {
    if root == nil {
        return
    }
    inOrder(root?.left)
    print(root!.node)
    inOrder(root?.right)
}

public func preOrder(_ root: Tree?) {
    if root == nil {
        return
    }
    print(root!.node)
    preOrder(root?.left)
    preOrder(root?.right)
}

public func postOrder(_ root: Tree?) {
    if root == nil {
        return
    }
    postOrder(root?.left)
    postOrder(root?.right)
    print(root!.node)
}

// W/o recursion

public func preOrderWOR(_ root: Tree?) {
    let stack = Stack<Tree?>()

    if root == nil {
        return
    }
    stack.push(root)
    while (!stack.isEmpty()) {
        let top = stack.top()!
        print(top!.node)
        stack.pop()
        if top?.right != nil {
            stack.push(top!.right)
        }
        if top?.left != nil {
            stack.push(top!.left)
        }
    }
}

public func inOrderWOR(_ root: Tree?) {
    if root == nil { return }
    let s = Stack<Tree?>()
    var node = root
    while(true) {
        if node != nil {
            s.push(node)
            node = node?.left
        } else {
            if s.isEmpty() { break }
            node = s.top()!
            print(node!.node)
            s.pop()
            node = node?.right
        }
    }
}

public func postOrderWOR(_ root: Tree?) {
    if root == nil { return }
    let s1 = Stack<Tree?>()
    let s2 = Stack<Tree?>()

    let node = root
    s1.push(node)
    while(!s1.isEmpty()) {
        let top = s1.top()!
        s2.push(top)
        s1.pop()
        if top?.left != nil {
            s1.push(top?.left)
        }
        if top?.right != nil {
            s1.push(top?.right)
        }
    }

    while !s2.isEmpty() {
        print(s2.top()!!.node)
        s2.pop()
    }
}
