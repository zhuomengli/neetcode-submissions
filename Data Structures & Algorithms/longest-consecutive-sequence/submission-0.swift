class Solution {
    // import Foundation
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {return 0} 
        var numbers = Set(nums)
        var maxlen = 1
        for num in nums {
            if !numbers.contains(num - 1) {// cur num is the starting of the sequence
                var current = num 
                var length = 1

                while numbers.contains(current + 1) {
                    current += 1 
                    length += 1 
                }
                maxlen = max(maxlen, length)
            }
        }
        return maxlen
    }
}
