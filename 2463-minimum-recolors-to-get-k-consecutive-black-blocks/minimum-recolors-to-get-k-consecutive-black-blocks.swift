class Solution {
    func minimumRecolors(_ blocks: String, _ k: Int) -> Int {
        var res = 101
        var black = 0
        var white = 0
        let arr = Array(blocks)
        for i in 0..<arr.count {
            let c = arr[i]
            if black + white < k {
                if c == "W" {
                    white += 1
                } else {
                    black += 1
                }
                res = white
            } else {
                if c == "W" {
                    white += 1
                } else {
                    black += 1
                }
                let last = arr[i-k]
                if last == "W" {
                    white -= 1
                } else {
                    black -= 1
                }
                res = min(res, white)
            }
            print(black, white)
        }
        return res
    }
}