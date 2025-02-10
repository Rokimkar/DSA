
class NumMatrix {
    var sumMatrix: [[Int]] = []
    init(_ matrix: [[Int]]) {
        sumMatrix = Array(repeating: Array(repeating: 0, count: matrix.first!.count), count: matrix.count)
        for i in 0..<matrix.count {
            for j in 0..<matrix.first!.count {
                if j > 0 {
                    sumMatrix[i][j] = sumMatrix[i][j-1] + matrix[i][j]
                } else {
                    sumMatrix[i][j] = matrix[i][j]
                }
            }
        }
        // print(sumMatrix)
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        var res = 0
        for i in row1...row2 {
            if col1 > 0 {
                res += (sumMatrix[i][col2] - sumMatrix[i][col1 - 1])
            } else {
                res += sumMatrix[i][col2]
            }
        }
        return res
    }
}

/**
 * Your NumMatrix object will be instantiated and called as such:
 * let obj = NumMatrix(matrix)
 * let ret_1: Int = obj.sumRegion(row1, col1, row2, col2)
 */