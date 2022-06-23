var root = makeTree()
var root1 = makeTree2()
var root2 = makeTree3()
var root3 = makeTree4()
var bst = makeBST()

print("level order")
levelOrderTraversal(root: root)

print("Inorder")
inOrder(root)

print("PreOrder")
preOrder(root)

print("Postorder")
postOrder(root)

print("W/O Recursion")
preOrderWOR(root)
inOrderWOR(root)
postOrderWOR(root)

print("check if valid BST")
balancedBT(root)
balancedBST(root: root)

print("Diameter")
dia1(root)
print(maxi)
diameter(root: root)
print(maxii)

print("Max path")
var maximum = 0
maxPathSum(root: root, &maximum)
print(maximum)

isIdentical(t1: root, t2: root1)

print("Zig zag order:")
zigZagOrderTraversal(root: root1)

print("Boundary traversal:")
boundaryTraversal(root2)

print("Vertical Traversal:")
verticalOrder(root2)

print("Top View:")
topView(root2)

print("Bottom View:")
bottomView(root2)

print("Left View:")
leftViewTree(root: root2, 0)
print(arrL)

print("Right View:")
rightViewTree(root: root2, 0)
print(arrR)

print("Is Mirror: ")
isSymetricalTrees(root3)

print("PAth ")
var node = 10
getPath(root2, node: &node)
print(arrP)

print("LCA:")
var node1 = 10
var node2 = 6
lca(root2, &node1, &node2)


// BST

print("BST")
print("Search")
search(bst, k: 15)

let s = searchBST(bst, k: 15)
print(s?.node)
