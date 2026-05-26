class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var keyToStrings:[String:[String]] = [:]
        for str in strs {
            // let key = String(str.sorted()) // must have string
            // var newList = keyToStrings[key, default:[]]
            // newList.append(str)
            // keyToStrings[key] = newList

             let key = String(str.sorted()) // sorted is elements
            keyToStrings[key, default: []].append(str) // key points!!! explain 
            /*
            
            In Swift, dict[key, default: value] provides mutable access directly into the dictionary entry, so appending mutates the value in place inside the hashmap.

Without default:, dictionary lookup returns an optional copy, so you'd need to modify a temporary variable and assign it back manually.
            
            */

        }
        // return Array(keyToStrings.values()) // no parethesis
             return Array(keyToStrings.values)
    }
}
