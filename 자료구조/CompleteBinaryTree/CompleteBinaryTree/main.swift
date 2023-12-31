import Foundation

var completeBinaryTree = CompleteBinaryTree<Int>()

for i in 0...30{
    completeBinaryTree.add(data: i)
}
completeBinaryTree.printTree()
completeBinaryTree.printInorder()
completeBinaryTree.printPreorder()
completeBinaryTree.printPostorder()
print("nodeCount = \(completeBinaryTree.nodeCount(node: completeBinaryTree.root))")
print("leafNodeCount = \(completeBinaryTree.leafNodeCount(node: completeBinaryTree.root))")
print("treeHeight = \(completeBinaryTree.treeHeight(node: completeBinaryTree.root))")

/*
                    0
__________________/ \_________________
        1                                      2
_______/ \_______                     ________/ \________
     3                 4                   5                   6
 ___/ \__          ___/ \__            ___/ \__            ___/ \__
  7        8        9        10        11        12        13        14
 / \      / \      / \      /  \      /  \      /  \      /  \      /  \
15   16  17   18  19   20  21    22  23    24  25    26  27    28  29    30

==== Inorder ====
15 7 16 3 17 8 18 1 19 9 20 4 21 10 22 0 23 11 24 5 25 12 26 2 27 13 28 6 29 14 30


==== Preorder ====
0 1 3 7 15 16 8 17 18 4 9 19 20 10 21 22 2 5 11 23 24 12 25 26 6 13 27 28 14 29 30


==== Postorder ====
15 16 7 17 18 8 3 19 20 9 21 22 10 4 1 23 24 11 25 26 12 5 27 28 13 29 30 14 6 2 0
 
nodeCount = 31
leafNodeCount = 16


 */
