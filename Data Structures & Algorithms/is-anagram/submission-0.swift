class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var charToInt:[Character:Int] = [:]
        for (_, char) in s.enumerated() {
            if let num = charToInt[char] {
                charToInt[char] = num + 1
            } else {
                charToInt[char] = 1
            }
        }

        for (_0 , char) in t.enumerated() {
            if let num = charToInt[char] {
                if num == 1 {
                    charToInt[char] = nil
                } else {
                    charToInt[char] = num - 1
                }
            } else {
                return false
            }
        }

        return charToInt.count == 0
    }
}
