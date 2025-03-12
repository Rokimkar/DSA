class Solution {
    func maximumCount(_ nums: [Int]) -> Int {
        nums.reduce(into: Array(repeating:0, count: 2)) { 
            if $1 > 0 {
                $0[1] += 1
            } else if $1 < 0 {
                $0[0] += 1
            }
        }.max()!
    }
}