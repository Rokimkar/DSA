class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var asteroidStack = [Int]()
        for i in 0..<asteroids.count {
            let asteroid = asteroids[i]
            if asteroidStack.isEmpty {
                asteroidStack.append(asteroid)
            } else {
                while !asteroidStack.isEmpty {
                    let last = asteroidStack.last!
                    if (last > 0 && asteroid < 0) {
                        if abs(last) == abs(asteroid) {
                            asteroidStack.removeLast()
                            break
                        } else if abs(asteroid) > abs(last) {
                            asteroidStack.removeLast()
                            if asteroidStack.isEmpty {
                                asteroidStack.append(asteroid)
                                break
                            }
                        } else {
                            break
                        }
                    } else {
                        asteroidStack.append(asteroid)
                        break
                    }
                }
            }
        }
        return asteroidStack
    }
}