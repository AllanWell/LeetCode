// https://leetcode-cn.com/problems/valid-parentheses/

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        
        let dict: [Character: Character] = [
            ")": "(",
            "]": "[",
            "}": "{"
        ]

        for item in s {
            if dict.values.contains(item) {
                stack.append(item)
            } else if dict.keys.contains(item)  {
                if !stack.isEmpty && stack.last == dict[item] {
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }

        return stack.isEmpty
    }
}