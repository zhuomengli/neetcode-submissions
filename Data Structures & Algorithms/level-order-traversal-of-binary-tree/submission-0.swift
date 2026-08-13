/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var result:[[Int]] = []
        guard let root = root else {
            return result
        }

        var queue:[TreeNode] = [root] 
        while !queue.isEmpty { // isEmpty is property not func
            var level:[Int] = []
            for _ in 0..<queue.count {
                let curNode = queue.removeFirst()
                if let left = curNode.left {
                    queue.append(left)
                }
                if let right = curNode.right {
                    queue.append(right)
                }
                level.append(curNode.val)
            }
            result.append(level)
        }

        return result
    }
}
