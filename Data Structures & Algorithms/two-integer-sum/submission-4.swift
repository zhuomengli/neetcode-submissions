class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var valueToPos:[Int:[Int]] = [:]
        for (i, number) in nums.enumerated() {
            valueToPos[number, default:[]].append(i)
        }

        var start = 0, end = nums.count - 1 
        // var nums = nums.sorted() 
             let nums = nums.sorted() 
        while start < end {
            let sum = nums[start] + nums[end] 
            if sum == target {
                // let index1 = valueToPos[nums[start], default:[0]].removeFirst()
                   let index1 = valueToPos[nums[start]]!.removeFirst()
                   let index2 = valueToPos[nums[end]]!.removeFirst()
                // let index2 = valueToPos[nums[start], default:[0]].removeFirst()
                return [min(index1, index2), max(index1, index2)]
                // return [index1 <= index2 ? index1 : index2, index1 > index2 ? index1 : index2]
            } else if sum < target {
                start += 1 
            } else {
                end -= 1
            }
        }

        return []
    }
}
