/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
import Collections

class FindElements {
    var nodeValues = Set<Int>()

    init(_ root: TreeNode?) {
        if let root = root {
            // using level order traversal to initialise the nodeValues array
            var nodeDeque = Deque<TreeNode>()
            root.val = 0
            nodeDeque.append(root)
            nodeValues.insert(root.val)
            while let node = nodeDeque.popFirst() {
                if node.left != nil {
                    node.left!.val = 2*(node.val) + 1
                    nodeValues.insert(node.left!.val)
                    nodeDeque.append(node.left!)
                }
                if node.right != nil {
                    node.right!.val = 2*(node.val) + 2
                    nodeValues.insert(node.right!.val)
                    nodeDeque.append(node.right!)
                }
            }
        }
    }
    
    func find(_ target: Int) -> Bool {
        return nodeValues.contains(target)
    }
}

/**
 * Your FindElements object will be instantiated and called as such:
 * let obj = FindElements(root)
 * let ret_1: Bool = obj.find(target)
 */