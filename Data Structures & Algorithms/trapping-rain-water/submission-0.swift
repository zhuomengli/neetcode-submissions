class Solution {
    func trap(_ height: [Int]) -> Int {
        
        var left = 0, right = height.count - 1 
        var leftMax = height[left]
        var rightMax = height[right]
        var total = 0 
        while left < right {
            if leftMax < rightMax { //should leftmax or heightofleft? 
                left += 1 
                leftMax = max(leftMax, height[left]) 
                total += leftMax - height[left]
            } else {
                right -= 1 
                rightMax = max(rightMax, height[right]) 
                total += rightMax - height[right]
            }
        }
        return total 
    }
}
