class Solution {
    func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
        var lesserStack = [Int]()
        var equalStack = [Int]()
        var largerStack = [Int]()
        for i in 0..<nums.count {
            if nums[i] < pivot {
                lesserStack.append(nums[i])
            } else if nums[i] > pivot {
                largerStack.append(nums[i])
            } else {
                equalStack.append(nums[i])
            }
        }
        return lesserStack + equalStack + largerStack
    }
}