class Solution {
    func smallestNumber(_ pattern: String) -> String {
        var res = ""
        var stack = [Int]()
        let patternChars = Array(pattern)
        for i in 0..<pattern.count+1 {
            stack.append(i+1)
            while !stack.isEmpty && (i == patternChars.count || patternChars[i] == "I") {
                res.append(String(stack.removeLast()))
            }
        }
        return res
    }
}