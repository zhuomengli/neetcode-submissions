/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil && head!.next != nil else {return head} 
        var cur:ListNode = head!, next:ListNode? = head!.next
        var prevHead:ListNode? = nil 
        while next != nil {
            // cur next newNext 
            cur.next = prevHead 
            prevHead = cur
            let newN = next!.next 
            next!.next = cur 
            cur = next! 
            next = newN 
        }
        return cur 
    }
}
