
// Print 1 to N
print("Print 1 to N")
printNumber(n: 7)

// Print N to 1
print("Print N to 1:")
printReverseNumber(n: 7)

// Factorial
print("Factorial:")
factorial(n: 1)

// Tree
makeTree()

// Height
print("Height of BST:")
heightOfBST(root: makeTree())

// Sort
var arr = [1,8,5,6,0,7,2,9]
print("Sort an array:")
sort(&arr)

var s = Stack<Int>()
s.push(1)
s.push(2)
s.push(3)
s.push(4)
s.push(5)
print("Delete in stack:")
deleteInStack(s: &s, size: 5)

myPow(2, -10)

print("Left View:")
leftViewTree(root: makeTree())

print("Right View:")
rightViewTree(root: makeTree())

print("Swap")
swap(makeTree())
