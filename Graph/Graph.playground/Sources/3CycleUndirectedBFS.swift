import Foundation

public func isCyclicInUnDirected(_ n: Int, _ graph: [Int: [Int]]) -> Bool {
    var vis = [Int](repeating: 0, count: n+1)

    let q = QueueTuple<Int,Int>()

    if vis[1] == 0 {
        q.push(1, -1)
        vis[1] = 1

        while !q.isEmpty() {
            let val = q.pop()
            if let val = val, let adj = graph[val.0] {
                for vertex in adj {
                    if vis[vertex] == 0 {
                        vis[vertex] = 1
                        q.push(vertex, val.0)
                    } else {
                        if vertex != val.1 {
                            return true
                        }
                    }
                }
            }
        }
        return false
    }
    return false
}
