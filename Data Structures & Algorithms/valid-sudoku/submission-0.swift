// class Solution {
//     func isValidSudoku(_ board: [[Character]]) -> Bool {
//         // hashmap: (row, column) -> set<Int>
//         // hashmap row 
//         // hashmap column 
//         // hasmap grid top left 0,1, 2

//         guard board.count == 9 && board[0].count == 9 else {return false} 
//         var rowToInts:[Int:Set<Character>] = [:]
//         var columnToInts:[Int:Set<Character>] = [:] 
//         var gridToInt:[String:Set<Character>] = [:] 

//         for row in 0..<board.count {
//             for column in 0..<board[0].count {
//                 guard board[row][column] != "." else {continue}  //forget!

//                 if rowToInts[row] == nil {
//                     rowToInts[row] = []
//                 }

//                 if columnToInts[column] == nil {
//                     columnToInts[column] = [] 
//                 }

//                 let gridR = row / 3 
//                 let gridC = column / 3
//                 let key = "\(gridR)\(gridC)"
//                 if gridToInt[key] == nil {
//                     gridToInt[key] = []
//                 }

//                 if rowToInts[row]!.contains(board[row][column]) {
//                     return false 
//                 }
//                 if columnToInts[column]!.contains(board[row][column]) {
//                     return false 
//                 }
//                 if gridToInt[key]!.contains(board[row][column]) {
//                     return false 
//                 }

//                 rowToInts[row]?.insert(board[row][column])
//                 columnToInts[column]?.insert(board[row][column])
//                 gridToInt[key]?.insert(board[row][column])
//             }
//         }

//         return true
//     }
// }

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        guard board.count == 9,
              board.allSatisfy({ $0.count == 9 }) else {
            return false
        }

        var rowToInts: [Int: Set<Character>] = [:]
        var columnToInts: [Int: Set<Character>] = [:]
        var gridToInts: [String: Set<Character>] = [:]

        for row in 0..<board.count {
            for column in 0..<board[row].count {
                let value = board[row][column]

                // Empty cells do not participate in validation.
                if value == "." {
                    continue
                }

                let gridRow = row / 3
                let gridColumn = column / 3
                let gridKey = "\(gridRow)-\(gridColumn)"

                if rowToInts[row, default: []].contains(value) || // cleanner
                    columnToInts[column, default: []].contains(value) ||
                    gridToInts[gridKey, default: []].contains(value) {
                    return false
                }

                rowToInts[row, default: []].insert(value)
                columnToInts[column, default: []].insert(value)
                gridToInts[gridKey, default: []].insert(value)
            }
        }

        return true
    }
}