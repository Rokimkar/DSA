class Solution {
    func clearDigits(_ s: String) -> String {
        String(Array(s).reduce(into: [Character]()) { Int(String($1)) == nil ? $0.append($1) : (_ = $0.removeLast()) })
    }
}