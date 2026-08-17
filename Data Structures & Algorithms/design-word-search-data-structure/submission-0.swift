class WordDictionary {
    class Node {
        var children:[Character:Node] = [:]
        var isWord:Bool = false
    }

    let dummyRoot = Node()

    func addWord(_ word: String) {
        let letters = Array(word) 
        var node = dummyRoot 
        for letter in letters {
            if node.children[letter] == nil {
                node.children[letter] = Node() 
            }
            node = node.children[letter]!
        }
        node.isWord = true
    }

    func search(_ word: String) -> Bool {
        let letters = Array(word)
        // dfs to recursively go over all branch when it encounter a wildcard . 
        func dfs(index:Int, node:Node) -> Bool {
            if index == letters.count {
                // return true
                return node.isWord
            }

            // check wildcard .
            if letters[index] == "." {
                for child in node.children.values {
                    if dfs(index: index + 1, node: child) {
                        return true
                    }
                }
                return false 
            }

            // validate current 
            guard let child = node.children[letters[index]] else {
                return false
            }

            return dfs(index: index + 1, node: child)
        }

        return dfs(index: 0, node: dummyRoot)
    }
}
