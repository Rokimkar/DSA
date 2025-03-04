class Solution {
    func checkPowersOfThree(_ n: Int) -> Bool {
        func powerBacktracking(_ power: Int, _ number: Int) -> Bool {
            if number < 0 {
                return false
            }
            var threePower = 1
            for i in 0..<power {
                threePower *= 3
            }
            if threePower > number {
                return false
            }
            if number - threePower == 0 {
                return true
            }
            return powerBacktracking(power+1, number-threePower) || powerBacktracking(power+1, number)
        }
        return powerBacktracking(0, n)
    }
}