class Solution {
    func numTilePossibilities(_ tiles: String) -> Int {
        var charsMap = [Character: Int]()
        for char in tiles {
            charsMap[char, default: 0] += 1
        }
        var res = 0
        func permutations() {
            for char in charsMap.keys {
                if let count = charsMap[char], count <= 0 {
                    continue
                }
                charsMap[char, default: 1] -= 1
                res += 1
                permutations()
                charsMap[char, default: 1] += 1
            }
        }
        permutations()
        return res
    }
}