class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var L = 0, R = L + 1 
        var maxP = 0 
        while L < R && R < prices.count {
            if prices[L] < prices[R] {
                maxP = max(maxP, prices[R] - prices[L]) 
                R += 1
            } else {
                L = R 
                R = L + 1
            }
        }
        return maxP
    }
}