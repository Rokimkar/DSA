class Solution {
    func removeStars(_ s: String) -> String {
        String(Array(s).reduce(into: [Character]()) { 
            if ($1 == "*") {
                ($0.removeLast())
            } else {
                ($0.append($1))
            }
        })
    }
}