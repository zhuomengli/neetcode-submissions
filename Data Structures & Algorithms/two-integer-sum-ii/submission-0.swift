class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        // asc but could has equal ele in numbers 
        // return index // diff ele in result 
        var start = 1, end = numbers.count 
        while start < end {
            let sum = numbers[start - 1] + numbers[end - 1] 
            if sum == target {
                return [start, end]
            } else if sum < target {
                start += 1
            } else {
                end -= 1
            }
        }

        return []
    }
}
