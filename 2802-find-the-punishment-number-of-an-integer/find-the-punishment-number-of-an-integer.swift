class Solution {
    func punishmentNumber(_ n: Int) -> Int {
        func isPunishmentNumber(num: Int, target: Int) -> Bool {
            if num == target { return true }
            var div = 10
            while div < num {
                let (left, right) = (num / div, num % div)
                if isPunishmentNumber(num: left, target: target - right) { 
                    return true 
                }
                div *= 10
            }
            return false
        }
        var res = 0
        for i in 1...n {
            let square = i*i
            if isPunishmentNumber(num: square, target: i) {
                res += square
            }
        }
        return res
     }
}