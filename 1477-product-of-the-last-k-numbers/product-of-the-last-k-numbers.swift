
class ProductOfNumbers {
    var productArr: [Int] = [1]
    var lastZero = -1
    init() {
        
    }
    
    func add(_ num: Int) {
        if num > 0 {
            productArr.append(productArr.last! * num)
        } else {
            lastZero = productArr.count
            productArr.append(1)
        }
    }
    
    func getProduct(_ k: Int) -> Int {
        let divideIdx = (productArr.count-k-1)
        let res = (divideIdx < lastZero) ? 0 : (productArr.last!/productArr[divideIdx])
        // print(productArr, res, k, divideIdx)
        return res
    }
}

/**
 * Your ProductOfNumbers object will be instantiated and called as such:
 * let obj = ProductOfNumbers()
 * obj.add(num)
 * let ret_2: Int = obj.getProduct(k)
 */