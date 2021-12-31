// https://leetcode-cn.com/problems/score-of-parentheses/

class Solution {
    func scoreOfParentheses(_ s: String) -> Int {
        var stack = [0]
        for char in s {
            if char == "(" {
                stack.append(0)
            } else {
                let v = stack.removeLast()
                let w = stack.removeLast()
                let temp = w + max(2 * v, 1)
                stack.append(temp)
            }
        }
        return stack.first!
    }
}
