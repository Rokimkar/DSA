class Solution {
    func findThePrefixCommonArray(_ A: [Int], _ B: [Int]) -> [Int] {
        var setA = Set<Int>()
        var setB = Set<Int>()
        var res = [Int]()
        for i in 0..<A.count {
            setA.insert(A[i])
            setB.insert(B[i])
            res.append(setA.intersection(setB).count)
        }
        return res
    }
}