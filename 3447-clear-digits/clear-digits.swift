class Solution {
    func clearDigits(_ s: String) -> String {
        String(Array(s).reduce(into: [Character]()) { 
            if Int(String($1)) == nil {
                $0.append($1)
            } else {
                if !$0.isEmpty {
                    $0.removeLast()
                }
            }
        })
    }
}