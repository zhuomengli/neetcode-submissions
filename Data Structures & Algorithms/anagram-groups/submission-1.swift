class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var keyToStrings:[String:[String]] = [:]
        for str in strs {
            // let key = String(str.sorted()) // must have string
            // var newList = keyToStrings[key, default:[]]
            // newList.append(str)
            // keyToStrings[key] = newList

             let key = String(str.sorted()) // sorted is elements
            keyToStrings[key, default: []].append(str)
        }
        // return Array(keyToStrings.values()) // no parethesis
             return Array(keyToStrings.values)
    }
}
