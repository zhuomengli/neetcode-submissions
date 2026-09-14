class Solution {

    func encode(_ strs: [String]) -> String {
        var result:String = "" 
        for str in strs {
            result += "\(str.count)#\(str)"
        }
        return result
    }

    func decode(_ str: String) -> [String] {
        let input = Array(str) 
        var result:[String] = [] 
        /*
        number, #, scan letters 

        */
        var i = 0 
        var number = 0 
        while i < input.count {
            if input[i].isNumber {
                number = 10*number + Int(String(input[i]))! // int only of string not char
                i += 1 // diff steps for incre! 【note】
            } else if input[i] == "#" {
                if number == 0 {
                    result.append("") 
                    i += 1
                    number = 0
                    continue
                }
                let endRange = i + number
                let element = input[i+1...endRange] 
                result.append(String(element)) // need string init
                number = 0 
                i = endRange + 1 // for string scan 
            }
            // i += 1
        }
        return result
    }
}
