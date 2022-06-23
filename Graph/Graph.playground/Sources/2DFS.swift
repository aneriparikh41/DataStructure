import Foundation

public func dfs(_ n: Int, _ graph: inout[Int: [Int]]) -> [Int] {
    var vis = [Int](repeating: 0, count: n+1)
    var dfs = [Int]()

    for i in 1..<vis.count {
        if vis[i] == 0 {
            dfsF(i, &vis, &graph, &dfs)
        }
    }
    return dfs
}

private func dfsF(_ vertex: Int, _ vis: inout [Int], _ graph: inout [Int: [Int]], _ dfs: inout [Int]) {
    dfs.append(vertex)
    vis[vertex] = 1
    for adj in graph[vertex]! {
        if vis[adj] == 0 {
            dfsF(adj, &vis, &graph, &dfs)
        }
    }
}
