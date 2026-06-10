class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.count > 0 else {return 0}
        // one scan is sufficient === assumptiuon wrong
        let characters = Array(s)
        var visited:Set<Character> = [] 
        var maxLen = 0, curLen = 0 

        for (start, character) in characters.enumerated() {
            curLen = 1
            visited = []
            visited.insert(character)

            for end in start+1..<characters.count {
                if !visited.contains(characters[end]) {
                    curLen += 1 
                    visited.insert(characters[end])
                } else {
                    // maxLen = max(maxLen, curLen)
                    break
                }
            }
            maxLen = max(maxLen, curLen)
        } 
        return maxLen
    }
}
