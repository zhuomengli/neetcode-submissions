class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var leftP:[Int] = Array(repeating: 1, count: nums.count) 
        var rightP:[Int] = Array(repeating: 1, count: nums.count) 
        for i in 1..<nums.count {
            leftP[i] = leftP[i - 1] * nums[i - 1] 
            let rightIndex = nums.count - 1 - i 
            rightP[rightIndex] = rightP[rightIndex + 1] * nums[rightIndex + 1] 
        }

        // var result:[Int] = [] // this will must use append, otherwise nil crash 【note】
        var result:[Int] = Array(repeating: 1, count: nums.count) // if dont use append then use this
        for i in 0..<nums.count {
            result[i] = leftP[i] * rightP[i] // no need index skip leftP and rightP already handle that【note】
        }
        return result
    }
}