// https://leetcode-cn.com/problems/evaluate-reverse-polish-notation/

class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()

        for token in tokens {
            if let num = Int(token) {
                stack.append(num)
            } else {
                let back = stack.removeLast()
                let prev = stack.removeLast()
                stack.append(operate(token, prev, back))
            }
        }
        return stack.last
    }

    private func operate(_ token: String, _ prev: Int, _ back: Int) {
        switch token {
            case "+":
                return prev + back
            case "-":
                return prev - back
            case "*":
                return prev * back
            case "/":
                return prev / back
            default:
                fatalError("Invalid Input") 
        }
    }
    
}