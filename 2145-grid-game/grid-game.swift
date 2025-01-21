class Solution {
    func gridGame(_ grid: [[Int]]) -> Int {
        var prefixGrid = Array(repeating: Array(repeating: 0, count: grid.first!.count), count: grid.count)
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                prefixGrid[i][j] = (j > 0 ? prefixGrid[i][j-1] : 0) + grid[i][j]
            }
        }
        var bestSecondRoboScore = Int.max
        for i in 0..<grid.first!.count {
            let score = max(prefixGrid[1][i] - grid[1][i], prefixGrid[0].last! - prefixGrid[0][i])
            bestSecondRoboScore = min(score, bestSecondRoboScore)
        }
        return bestSecondRoboScore
    }
}