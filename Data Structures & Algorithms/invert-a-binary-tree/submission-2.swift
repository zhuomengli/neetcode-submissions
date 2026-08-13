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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {return root}

        // if root.left === nil {
        //     root.left = root.right 
        //     root.right = nil 
        //     return root 
        // }

        // if root.right === nil {
        //     root.right = root.left 
        //     root.left = nil
        //     return root 
        // }

        let oldLeft = invertTree(root.left) 
        let oldRight = invertTree(root.right)
        root.left = oldRight 
        root.right = oldLeft 
        return root 
    }
}
