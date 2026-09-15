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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let dummyHead = ListNode(0) 
        var head = dummyHead
        var list1 = list1, list2 = list2
        while list1 !== nil || list2 !== nil {
            if list1 === nil {
                head.next = list2 
                break 
            }

            if list2 === nil {
                head.next = list1 
                break 
            }

            if list1!.val <= list2!.val {
                head.next = list1 
                list1 = list1!.next
            } else {
                head.next = list2 
                list2 = list2!.next
            }
            head = head.next! 
        }
        return dummyHead.next
    }
}
