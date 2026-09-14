class Solution {
//     func isAnagram(_ s: String, _ t: String) -> Bool {
//         var charToInt:[Character:Int] = [:]
//         for (_, char) in s.enumerated() {
//             if let num = charToInt[char] {
//                 charToInt[char] = num + 1
//             } else {
//                 charToInt[char] = 1
//             }
//         }

//         for (_0 , char) in t.enumerated() {
//             if let num = charToInt[char] {
//                 if num == 1 {
//                     charToInt[char] = nil
//                 } else {
//                     charToInt[char] = num - 1
//                 }
//             } else {
//                 return false
//             }
//         }

//         return charToInt.count == 0
//     }
// }



    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        
        var freq: [Character: Int] = [:]
        
        for char in s {
            freq[char, default: 0] += 1 /////// 这个简单
        }
        
        for char in t {
            guard let count = freq[char] else { return false }
            
            if count == 1 {
                freq[char] = nil
            } else {
                freq[char] = count - 1
            }
        }
        
        return freq.isEmpty // 【note】
    }}