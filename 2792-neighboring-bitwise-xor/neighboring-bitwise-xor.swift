class Solution {
    func doesValidArrayExist(_ derived: [Int]) -> Bool {
        !derived.reduce(false) { ($1 == 1) ? !$0 : $0 }
    }
}