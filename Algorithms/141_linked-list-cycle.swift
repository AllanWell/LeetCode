// https://leetcode-cn.com/problems/linked-list-cycle/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        if (head == nil && head?.next == nil) {
            return false
        }
        var fast = head?.next
        var slow = head
        while (fast != nil && fast?.next != nil) {
            if (fast === slow) {
                return true
            }
            fast = fast?.next?.next
            slow = slow?.next
        }
        return false
    }
}