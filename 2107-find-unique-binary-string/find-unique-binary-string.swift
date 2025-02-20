class Solution {
    func findDifferentBinaryString(_ nums: [String]) -> String {
        var uniqueNumsSet = Set<String>()
        for num in nums {
            uniqueNumsSet.insert(num)
        }
        var digitsArr = [Character]()
        for i in 0..<nums.count {
            digitsArr.append("0")
        }
        func digitsPermutations(pos: Int) -> String? {
            for i in pos..<nums.count {
                if !uniqueNumsSet.contains(String(digitsArr)) {
                    return String(digitsArr)
                }
                if i < nums.count - 1 {
                    if let str = digitsPermutations(pos: i+1) {
                        return str
                    }
                } 
                if digitsArr[i] == "1" {
                    digitsArr[i] = "0"
                } else {
                    digitsArr[i] = "1"
                }
                if !uniqueNumsSet.contains(String(digitsArr)) {
                    return String(digitsArr)
                }
                if i < nums.count - 1 {
                    if let str = digitsPermutations(pos: i+1) {
                        return str
                    }
                }
            }
            return nil
        }
        if let str = digitsPermutations(pos: 0) {
            return str
        }
        return String(digitsArr)
    }
}