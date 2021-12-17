// https://leetcode-cn.com/problems/remove-linked-list-elements/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let dummy = ListNode()
        dummy.next = head
        var temp: ListNode? = dummy
        while temp != nil && temp?.next != nil {
            if temp?.next?.val == val {
                temp?.next = temp?.next?.next
            } else {
                temp = temp?.next
            }
        }
        return dummy.next
    }
}