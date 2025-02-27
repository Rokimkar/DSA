import Algorithms
class Solution {
    func lenLongestFibSubseq(_ arr: [Int]) -> Int {
        var res = 0
        for i in 0..<arr.count-1 {
            var curr = 0
            for j in i+1..<arr.count {
                var k = j + 1
                var firstItem = arr[i]
                var secondItem = arr[j]
                while k < arr.count {
                    let sum = firstItem + secondItem
                    if arr[k] == sum {
                        curr += 1 
                        firstItem = secondItem
                        secondItem = arr[k]
                    } else if sum < arr[k] {
                        break
                    }
                    k += 1
                }
                res = max(res, curr)
                curr = 0
            }
        }
        return (res == 0) ? 0 : (res + 2)
    }
}