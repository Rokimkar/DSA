class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var writeIndex = 0
        var readIndex = 0
        while readIndex < chars.count {
            let currentChar = chars[readIndex]
            var count = 0
            while readIndex < chars.count && chars[readIndex] == currentChar {
                count += 1
                readIndex += 1
            }
            chars[writeIndex] = currentChar
            writeIndex += 1
            if count > 1 {
                for digit in String(count) {
                    chars[writeIndex] = digit
                    writeIndex += 1
                }
            }
        }
        chars.removeLast(chars.count - writeIndex)
        return chars.count
    }
}