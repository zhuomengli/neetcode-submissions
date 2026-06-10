class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        guard heights.count >= 2 else {return 0} 
        var start = 0, end = heights.count - 1 
        var maxArea = 0
        while start < end {
            let curArea = (end - start) * min(heights[start], heights[end])
            maxArea = max(maxArea, curArea)
            if heights[start] < heights[end] {
                start += 1 
            } else {
                end -= 1
            }
        }
        return maxArea

    }
}
