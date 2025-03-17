class Solution {
    func divideArray(_ nums: [Int]) -> Bool {
        var numsOccurence = nums.reduce(into: [Int: Int]()) {
            $0[$1, default:0] += 1
        }
        for (key, value) in numsOccurence {
            if value % 2 != 0 {
                return false
            }
        }
        return true
    }
}