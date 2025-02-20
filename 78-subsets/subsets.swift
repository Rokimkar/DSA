class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var res: [[Int]] = [[]]
        for num in nums {
            for r in res {
                var r = r
                r.append(num)
                res.append(r)
            }
        }
        return res
    }
}