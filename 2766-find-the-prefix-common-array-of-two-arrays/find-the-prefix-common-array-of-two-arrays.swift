class Solution {
    func findThePrefixCommonArray(_ A: [Int], _ B: [Int]) -> [Int] {
        var setA = Set<Int>()
        var setB = Set<Int>()
        return A.enumerated().reduce(into: [Int]()) {
            setA.insert($1.1)
            setB.insert(B[$1.0])
            $0.append(setA.intersection(setB).count)
        }
    }
}