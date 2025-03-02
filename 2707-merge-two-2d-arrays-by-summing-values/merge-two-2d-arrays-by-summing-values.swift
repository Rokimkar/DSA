class Solution {
    func mergeArrays(_ nums1: [[Int]], _ nums2: [[Int]]) -> [[Int]] {
        var res = [[Int]]()
        var i = 0
        var j = 0
        while i < nums1.count && j < nums2.count {
            let num1 = nums1[i]
            let num2 = nums2[j]
            if num1[0] == num2[0] {
                res.append([num1[0], num1[1] + num2[1]])
                i += 1
                j += 1
            } else {
                if num1[0] < num2[0] {
                    res.append([num1[0],num1[1]])
                    i+=1
                } else {
                    res.append([num2[0],num2[1]])
                    j+=1
                }
            }
        }
        while i < nums1.count {
            res.append(nums1[i])
            i += 1
        }
        while j < nums2.count {
            res.append(nums2[j])
            j += 1
        }
        return res
    }
}