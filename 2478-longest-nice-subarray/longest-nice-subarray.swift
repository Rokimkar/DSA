class Solution {
    func longestNiceSubarray(_ nums: [Int]) -> Int {
        var maxSize = 1
        var setBits = 0
        for i in 0..<nums.count {
            var curr = 1
            setBits = nums[i]
            if i + 1 < nums.count {
                for j in (i+1)..<nums.count {
                    if setBits & nums[j] == 0 {
                        setBits = setBits | nums[j]
                        curr += 1
                    } else {
                        break
                    }
                }
            }
            maxSize = max(maxSize, curr)
        }
        return maxSize
    }
}