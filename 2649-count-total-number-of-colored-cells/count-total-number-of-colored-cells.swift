class Solution {
    func coloredCells(_ n: Int) -> Int {
        return 1 + (4*((n * (n-1))/2))
    }
}