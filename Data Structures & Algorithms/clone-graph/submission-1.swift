/*
Definition for a Node.
class Node {
    var val: Int
    var neighbors: [Node?]
    init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}
*/

    extension Node:Hashable {
        // func hasher(hash:Hasher) {
        //     hash.combine(node.val)
        //     // hash.combine(node.left)
        // }
        func hash(into hasher: inout Hasher) {
            hasher.combine(ObjectIdentifier(self))
        }

        static func == (lhs:Node, rhs:Node) -> Bool {
            return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
        }
    }
class Solution {

    func cloneGraph(_ node: Node?) -> Node? {
        guard let node = node else {return node} 
        // node - new 
        var queue:[Node] = [node]
        var oldToNew:[Node:Node] = [:] 
        while !queue.isEmpty {
            for _ in 0..<queue.count {
                let node = queue.removeFirst() 
                oldToNew[node] = Node(node.val)
                for n in node.neighbors {
                    guard let n = n else {continue}
                    if oldToNew[n] == nil { // as visited in graph
                        queue.append(n)
                    }
                    
                }
            }
        }

        // populate neighbors field for new 
        for (old, new) in oldToNew {
            for oldN in old.neighbors {
                guard let oldN = oldN else {continue}
                new.neighbors.append(oldToNew[oldN]!)
            }
        }

        return oldToNew[node]!
    }
}
