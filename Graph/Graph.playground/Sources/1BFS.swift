import Foundation

public func bfs(_ n: Int, _ graph: [Int: [Int]]) -> [Int]{
    var vis = [Int](repeating: 0, count: n+1)
    var bfs = [Int]()

    let q = Queue<Int>()

    for i in 1..<vis.count {
        if vis[i] == 0 {
            q.push(i)
            vis[i] = 1

            while !q.isEmpty() {
                let val = q.pop()
                bfs.append(val ?? 0)
                if let val = val, let adj = graph[val] {
                    for vertex in adj {
                        if vis[vertex] == 0 {
                            vis[vertex] = 1
                            q.push(vertex)
                        }
                    }
                }
            }

        }
    }

    return bfs
}
