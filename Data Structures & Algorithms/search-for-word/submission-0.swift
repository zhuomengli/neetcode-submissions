class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        let m = board.count 
        let n = board[0].count
        let letters = Array(word)
        var visited:[Bool] = Array(repeating:false, count:m * n)
        
        for i in 0..<m {
            for j in 0..<n {
                guard board[i][j] == letters[0] else {continue}

                visited[i*n + j] = true
                let result = dfs(i, j, 1, &visited) // from 1 not 0
                if result {
                    return true
                }
                visited[i*n + j] = false
            }
        }

        return false


        func dfs(_ x:Int, _ y:Int, _ letterIndex:Int, _ visited:inout [Bool]) -> Bool {
            if letterIndex == word.count {
                return true
            }

            var dx = [0, 0, 1, -1]
            var dy = [1, -1, 0, 0]
            var result = false
            for i in 0..<dx.count {
                let newX = x + dx[i]
                let newY = y + dy[i]
                guard newX >= 0 && newX < m && newY >= 0 && newY < n else {
                    continue
                }
                guard !visited[newX * n + newY]  else {
                    continue
                }
                guard letters[letterIndex] == board[newX][newY] else {
                    continue
                } 
                visited[newX*n + newY] = true
                result = result || dfs(newX, newY, letterIndex + 1, &visited)
                visited[newX*n + newY] = false
            }
            return result
        }
    }
}
