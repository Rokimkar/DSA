class Solution {
    func numberOfAlternatingGroups(_ colors: [Int], _ k: Int) -> Int {
        var start = 0
        var end = 0
        var res = 0
        for i in 0..<colors.count {
            start = i
            // print("start: \(start)")
            if end <= start {
                end = start + 1
            }
            while (end - start) + 1 <= k {
                if colors[(end - 1) % colors.count] == colors[(end % colors.count)] {
                    break
                } 
                if (end - start) + 1 == k {
                    res += 1
                    // print("res: \(res)")
                    break
                }
                // print("end: \(end)")
                end += 1
            }
        }
        return res
    }
}