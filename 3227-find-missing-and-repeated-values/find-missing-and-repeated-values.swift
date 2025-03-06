class Solution {
    func findMissingAndRepeatedValues(_ grid: [[Int]]) -> [Int] {
        var arr = Array(repeating: 0, count: (grid.count) * (grid.count))
        for i in 0..<grid.count {
            for j in 0..<grid.count {
                arr[grid[i][j] - 1] += 1
            }
        }
        var a = 0
        var b = 0
        for i in 0..<arr.count where arr[i] == 0 {
            b = i + 1
        }
        for i in 0..<arr.count where arr[i] == 2 {
            a = i + 1
        }
        return [a,b]
    }
}