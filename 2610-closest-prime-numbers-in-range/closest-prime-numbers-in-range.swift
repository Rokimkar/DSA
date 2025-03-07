class Solution {
    func closestPrimes(_ left: Int, _ right: Int) -> [Int] {
        func isPrime(_ number: Int) -> Bool {
            if number <= 1 {
                return false
            }
            if number <= 3 {
                return true
            }
            if number % 2 == 0 || number % 3 == 0 {
                return false
            }
            var i = 5
            while i * i <= number {
                if number % i == 0 || number % (i + 2) == 0 {
                    return false
                }
                i += 6
            }
            return true
        }
        var primesArr = [Int]()
        for i in left...right {
            if isPrime(i) {
                primesArr.append(i)
            }
        }
        var num1 = -1
        var num2 = -1
        var minDiff = Int.max
        for i in 0..<primesArr.count {
            if i + 1 < primesArr.count {
                let diff = primesArr[i+1] - primesArr[i]
                if diff < minDiff {
                    minDiff = diff
                    num1 = primesArr[i]
                    num2 = primesArr[i+1]
                }
            }
        }
        return [num1, num2]
    }
}