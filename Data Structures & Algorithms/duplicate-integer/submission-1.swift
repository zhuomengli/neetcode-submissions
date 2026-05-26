class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        // var uniqueNums:Set<Int> = []
        // for num in nums {
        //     if uniqueNums.contains(num) {
        //         return true 
        //     }
        //     uniqueNums.insert(num)
        // }
        // return false

        var nums = nums.sorted()
        if nums.count == 0 || nums.count == 1 {
            return false 
        }

        for i in 1..<nums.count {
            if nums[i] == nums[i - 1] {
                return true
            }
        }

        return false
    }
}
