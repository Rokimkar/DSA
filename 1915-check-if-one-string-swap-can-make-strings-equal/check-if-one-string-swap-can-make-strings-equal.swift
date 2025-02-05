class Solution {
    func areAlmostEqual(_ s1: String, _ s2: String) -> Bool {
        let charsS1 = Array(s1)
        let charsS2 = Array(s2)
        var chars1: String = ""
        var chars2: String = ""
        var diff: Int = 0
        for i in 0..<charsS1.count {
            if charsS1[i] != charsS2[i] {
                diff += 1
                chars1 = chars1 + String(charsS1[i])
                chars2 = chars2 + String(charsS2[i])
            }
        }
        if diff == 2 {
            if chars1 == String(chars2.reversed()) {
                return true
            } else {
                return false
            }
        } else if diff == 0 {
            return true
        } else {
            return false
        }
        return true
    }
}