class Solution {
    func queryResults(_ limit: Int, _ queries: [[Int]]) -> [Int] {
        var balls = [Int:Int]()
        var colors = [Int: Int]()
        var colorSet = Set<Int>()
        var res: [Int] = []
        for query in queries {
            if balls[query[0], default: 0] == 0 {
                colors[query[1], default: 0] += 1
                colorSet.insert(query[1])
                balls[query[0], default: 0] = query[1]
            } else {
                if colors[balls[query[0], default: 0], default: 1] >= 1 {
                    colors[balls[query[0], default: 0], default: 1] -= 1
                } else {
                    colors[balls[query[0], default: 0], default: 1] = 0
                }
                if colors[balls[query[0], default: 0], default: 1] == 0 {
                    colorSet.remove(balls[query[0], default: 0])
                }
                colorSet.insert(query[1])
                colors[query[1], default: 0] += 1
                balls[query[0], default: 0] = query[1]
            }
            res.append(colorSet.count)
        }
        return res
    }
}