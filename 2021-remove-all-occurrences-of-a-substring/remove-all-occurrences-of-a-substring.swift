class Solution {
    func removeOccurrences(_ s: String, _ part: String) -> String {
        s.reduce(into: "") {
            $0.append($1)
            if $0.hasSuffix(part) {
                $0.removeLast(part.count)
            }
        }
    }
}