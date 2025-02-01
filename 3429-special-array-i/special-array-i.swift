class Solution {
    func isArraySpecial(_ nums: [Int]) -> Bool {
        if nums.count == 1 {
            return true
        }
        for i in 1..<nums.count {
            if nums[i-1] % 2 == nums[i] % 2 {
                return false
            }
        }
        return true
    }
}