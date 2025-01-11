class Solution {
    func equalPairs(_ grid: [[Int]]) -> Int {
        var columns = Array(repeating: Array(repeating:0, count: grid.count), count: grid.count)
        for i in 0..<grid.count {
            for j in 0..<grid.count {
                columns[j][i] = grid[i][j]
            }
        }
        var res = 0
        for i in 0..<grid.count {
            for j in 0..<grid.count {
                if grid[i] == columns[j] {
                    res += 1
                }
            }
        }
        return res
    }
}