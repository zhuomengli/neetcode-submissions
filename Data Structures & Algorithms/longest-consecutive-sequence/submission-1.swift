class Solution {
    // import Foundation
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {return 0}
        var maxLen = 1 
        var numsSet = Set(nums)
        for num in nums {
             // Only count from the beginning of a sequence. 【note】
             // 审题 order doesnot matter！
            guard !numsSet.contains(num - 1) else {continue} 

            var length = 1 
            var element = num
            while numsSet.contains(element + 1) {
                element += 1 
                length += 1 
                // maxLen = max(maxLen, length)
            }
            maxLen = max(maxLen, length)
        }

        return maxLen

    }
}
