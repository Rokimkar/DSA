class Solution {
    func kthGrammar(_ n: Int, _ k: Int) -> Int {
        if n == 1 || k == 1 {
            return 0
        }
        let mid = Int(pow(Double(2),Double(n-1)))/2
        if k <= mid {
            return kthGrammar(n-1, k)
        } else {
            if kthGrammar(n-1, k-mid) == 0 {
                return 1
            } else {
                return 0
            }
        }
        return 0
    }
}