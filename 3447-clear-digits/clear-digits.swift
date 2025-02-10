class Solution {
    func clearDigits(_ s: String) -> String {
        var sArr = Array(s)
        var validChars = [Character]()
        for i in 0..<sArr.count {
            if let _ = Int(String(sArr[i])) {
                validChars.removeLast()
            } else {
                validChars.append(sArr[i])
            }
        }
        return String(validChars)
    }
}