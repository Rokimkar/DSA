class Solution {
    func countBadPairs(_ nums: [Int]) -> Int {
        var seriesCount: [Int: Int] = [:]
        for i in 0..<nums.count {
            seriesCount[nums[i]-i, default: 0] += 1
        }
        return (((nums.count - 1) * nums.count)/2) - seriesCount.filter{ $0.value > 1 }.values.reduce(0){ $0 + (($1 - 1)*$1)/2 }
    }
}