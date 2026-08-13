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
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        guard let root = root else {
            return subRoot === nil 
        }

        guard let subRoot = subRoot else {
            return false
        }

        if isSameTree(root, subRoot) {
            return true
        }

        return isSubtree(root.left, subRoot) || isSubtree(root.right, subRoot) // this is the recursion key!!!!!

        // iterate two tree together to compare the value 
        
    }

    func isSameTree(_ root:TreeNode?, _ subRoot:TreeNode?)-> Bool {
            if root === nil && subRoot === nil {
                return true
            }

            if root === nil {
                return false 
            }

            if subRoot === nil {
                return false
            }

            if root!.val != subRoot!.val {
                return false 
            }

            return isSameTree(root!.left, subRoot!.left) && isSameTree(root!.right, subRoot!.right)
        }
}
