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
    func maxPathSum(_ root: TreeNode?) -> Int {
        var result = Int.min 
        func dfs(_ root:TreeNode?) -> Int {
            guard let root = root else {return 0}
            let left = max(0, dfs(root.left)) 
            let right = max(0, dfs(root.right)) 
            let curCompoundPath = left + right + root.val 
            let maxSinglePath = max(left, right) + root.val
            result = max(result, curCompoundPath)
            return maxSinglePath
        }

        dfs(root)
        return result
    }
}
