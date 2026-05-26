class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var uniqueNums:Set<Int> = []
        for num in nums {
            if uniqueNums.contains(num) {
                return true 
            }
            uniqueNums.insert(num)
        }
        return false
    }
}
