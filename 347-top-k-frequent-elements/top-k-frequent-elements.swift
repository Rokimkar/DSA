class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        nums.reduce(into: [Int: Int]()){ $0[$1, default: 0] += 1 }.map{ ($0.key, $0.value)}.sorted{$0.1 > $1.1}[0..<k].map{$0.0}
    }
}