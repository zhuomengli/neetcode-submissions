class Solution {
func isPalindrome(_ s: String) -> Bool {
    let letters = Array(s.lowercased()) // upfront better
    var start = 0, end = letters.count - 1 
    while start < end {
        while start < end && !(letters[start].isLetter || letters[start].isNumber) {
            start += 1 
        }

        while start < end && !(letters[end].isLetter || letters[end].isNumber) {
            end -= 1 
        }

        // guard start < end else {return false} // no need becasue start < end , or start=end, if equal even not valid char is fine

        guard letters[start].lowercased() == letters[end].lowercased() else {return false}

        start += 1 
        end -= 1
    }

    return true
}
}
