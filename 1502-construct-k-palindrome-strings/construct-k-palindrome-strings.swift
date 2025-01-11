class Solution {
    func canConstruct(_ s: String, _ k: Int) -> Bool {
        s.count >= k ? Array(s).reduce(into: [Character: Int]()) { $0[$1, default:0] += 1 }.values.reduce(0){ $0 + ($1%2) } <= k : false
    }
}