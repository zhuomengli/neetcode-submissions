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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
/*
x x x x 
s     f 3rd 
fast = 3 more steps 
s next remove 
*/
    let dummyHead = ListNode(0) 
    dummyHead.next = head 
    var slow:ListNode? = dummyHead, fast:ListNode? = dummyHead 
    for _ in 0..<(n + 1) {
        fast = fast?.next 
    }

    // while fast !== nil && fast!.next !== nil {
        while fast !== nil {
        slow = slow?.next 
        fast = fast?.next 
    }

    slow?.next = slow?.next?.next 
    return dummyHead.next

    }
}
