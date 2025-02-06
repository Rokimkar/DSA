class Solution {
    func tupleSameProduct(_ nums: [Int]) -> Int {
        var products = [Int:Int]()
        for i in 0..<nums.count {
            if i + 1 < nums.count {
                for j in (i+1)..<nums.count {
                    products[nums[j]*nums[i], default: 0] += 1
                }
            }
        }
        var res = 0
        for value in products.values {
            res += (((value * (value-1))/2)*8)
        }
        return res
    }
}