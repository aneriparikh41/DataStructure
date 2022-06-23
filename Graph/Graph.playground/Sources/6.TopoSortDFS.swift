import Foundation

// u->v, u should be before v
// DFS: take stack and follow same approach

public func topoDFS(_ n: Int, _ graph: inout[Int: [Int]]) -> [Int] {
    var vis = [Int](repeating: 0, count: n)
    var dfs = [Int]()
    var s = Stack<Int>()

    for i in 1..<vis.count {
        if vis[i] == 0 {
            dfsTopo(i, &vis, &graph, &s)
        }
    }

    while !s.isEmpty() {
        dfs.append(s.top()!)
        s.pop()
    }
    return dfs
}

private func dfsTopo(_ vertex: Int, _ vis: inout [Int], _ graph: inout [Int: [Int]], _ dfs: inout Stack<Int>) {
    vis[vertex] = 1
    for adj in graph[vertex] ?? [] {
        if vis[adj] == 0 {
            dfsTopo(adj, &vis, &graph, &dfs)
        }
    }
    dfs.push(vertex)
}

