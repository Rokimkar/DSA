class Solution {
    func maximumSum(_ nums: [Int]) -> Int {
        var digitsSumDict = [Int: [Int]]()
        var res = -1
        for i in 0..<nums.count {
            var sum = 0
            var n = nums[i]
            while n > 0 {
                sum += n % 10
                n /= 10
            }
            digitsSumDict[sum, default: [Int]()].append(nums[i])
        }
        for (key,value) in digitsSumDict {
            if value.count < 2 {
                continue
            }
            var firstMax = 0
            var secondMax = 0
            for j in 0..<value.count {
                if value[j] > firstMax {
                    secondMax = firstMax
                    firstMax = value[j]
                } else if value[j] > secondMax {
                    secondMax = value[j]
                }
            }
            res = max(res, (firstMax + secondMax))
        }
        return res
    }
}