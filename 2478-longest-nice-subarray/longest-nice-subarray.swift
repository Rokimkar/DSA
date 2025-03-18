class Solution {
    func longestNiceSubarray(_ nums: [Int]) -> Int {
        var maxSize = 1
        var setBits = nums[0]
        var left = 0
        var right = left + 1
        while left <= right && right < nums.count {
            while setBits & nums[right] != 0 {
                setBits = setBits ^ nums[left]
                left += 1
            }
            maxSize = max(maxSize, (right - left) + 1)
            setBits = setBits | nums[right]
            right += 1
        }
        return maxSize
    }
}