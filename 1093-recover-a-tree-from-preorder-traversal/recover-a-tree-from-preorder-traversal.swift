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
class Solution {
    func recoverFromPreorder(_ traversal: String) -> TreeNode? {
        var nodeStack = [TreeNode]()
        let traversalChars = Array(traversal)
        var i = 0
        var dashCount = 0
        while i < traversalChars.count {
            if traversalChars[i] == "-" {
                dashCount += 1
                i += 1
            } else {
                var j = i
                while j < traversalChars.count && traversalChars[j] != "-" {
                    j += 1
                }
                let num = Int(String(traversalChars[i..<j]))
                i = j
                let node = TreeNode(num ?? 0)
                if dashCount < nodeStack.count {
                    while dashCount != nodeStack.count {
                        nodeStack.removeLast()
                    }
                    nodeStack.last!.right = node
                    nodeStack.append(node)
                } else {
                    if !nodeStack.isEmpty {
                        nodeStack.last!.left = node
                    }
                    nodeStack.append(node)
                }
                dashCount = 0
            }
        }
        return nodeStack.first!
    }
}