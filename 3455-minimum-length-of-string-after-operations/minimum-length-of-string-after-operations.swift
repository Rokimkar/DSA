class Solution {
    func minimumLength(_ s: String) -> Int {
        s.count - Array(s).reduce(into: [Character: Int]()){ $0[$1, default:0] += 1 }.values.reduce(0) { 
            if ($1 > 2) {
                if $1 % 2 == 1 {
                    return $0 + ($1 - 1)
                } else {
                    return $0 + ($1 - 2)
                }
            }
            return $0
        }
    }
}