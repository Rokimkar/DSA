class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n == 1 {
            return true
        }
        if n == 0 {
            return false
        }
        if n % 2 == 0 {
            return isPowerOfTwo(n/2)
        }
        return false
    }
}