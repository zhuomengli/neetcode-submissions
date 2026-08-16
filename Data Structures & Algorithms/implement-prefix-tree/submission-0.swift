class PrefixTree {

    class Node{
        let value:Character 
        var children:[Character:Node] = [:] // not set but hashmap
        var isWord:Bool = false
        init(value:Character) {
            self.value = value
        }
    }

    private let dummyHead:Node

    init() {
        self.dummyHead = Node(value: Character("0")) 
    }

    func insert(_ word: String) {
        let letters:[Character] = Array(word)
        var node = dummyHead
        for (i, letter) in letters.enumerated() {
            if node.children[letter] == nil {
                node.children[letter] = Node(value: letter)
            }
            node = node.children[letter]!
            if i == letters.count - 1 {
                node.isWord = true
            }
        }
    }

    func search(_ word: String) -> Bool {
        let letters = Array(word) 
        var node = dummyHead
        for (i, letter) in letters.enumerated() {
            if node.children[letter] == nil {return false} 
            node = node.children[letter]!
            if i == letters.count - 1 {
                return node.isWord
            }
        }
        return false
    }

    func startsWith(_ prefix: String) -> Bool {
        let letters = Array(prefix) 
        var node = dummyHead
        for (_, letter) in letters.enumerated() {
            if node.children[letter] == nil {return false} 
            node = node.children[letter]!
            // if i == letters.count - 1 {
            //     return node.isWord
            // }
        }
        return true
    }
}
