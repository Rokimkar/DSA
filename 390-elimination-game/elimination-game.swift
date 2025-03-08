class Solution {
    func lastRemaining(_ n: Int) -> Int {
        var isLeft = true
        var counter = 1
        var left = 1
        var remaining = n
        while remaining > 1 {
            if isLeft {
                left = left + counter
            } else if remaining % 2 == 1 {
                left = left + counter
            }
            remaining /= 2
            counter *= 2
            isLeft = !isLeft
        }
        return left
    }
}