class Solution {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        guard word1.count == word2.count else { return false }
        let word1List = Array(word1).reduce(into: [Character: Int]()) { $0[$1, default: 0] += 1 }
        let word2List = Array(word2).reduce(into: [Character: Int]()) { $0[$1, default: 0] += 1 }
        if word1List.keys == word2List.keys && word1List.values.sorted() == word2List.values.sorted() {
            return true
        }
        return false
    }
}