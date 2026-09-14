class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted{$0<$1} 
        var results:[[Int]] = []
        for i in 0..<nums.count - 2 {
            if i > 0 && nums[i] == nums[i-1] {continue}
            var start = i + 1, end = nums.count - 1
            while start < end {
                let sum = nums[start] + nums[end] + nums[i]
                if sum == 0 {
                    results.append([nums[i], nums[start], nums[end]])
                    while start + 1 < end && nums[start + 1] == nums[start] {start += 1} 
                    while end - 1 > start && nums[end - 1] == nums[end] {end -= 1}
                    start += 1 
                    end -= 1
                } else if sum < 0 {
                    start += 1
                } else {
                    end -= 1
                }
            }
        }
        return results
    }
}
