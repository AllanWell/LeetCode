// https://leetcode-cn.com/problems/middle-of-the-linked-list/

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
    func middleNode(_ head: ListNode?) -> ListNode? {
        var count = 0
        var temp = head
        while temp != nil && temp?.next != nil {
            temp = temp?.next
            count += 1
        }
        temp = head
        count = (count + 1) / 2
        while count != 0 {
            temp = temp?.next
            count -= 1
        }
        return temp
    }
}

// 快慢指针
class Solution2 {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var quick = head
        var slow = head
        while quick != nil && quick?.next != nil {
            quick = quick?.next?.next
            slow = slow?.next
        }
        return slow
    }
}