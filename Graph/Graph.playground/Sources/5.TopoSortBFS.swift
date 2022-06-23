import Foundation

// kahns Algo 
// array of indegree and pushing it when 0

public func topoBFS(_ n: Int, _ graph: [Int: [Int]]) -> [Int] {
    let q = Queue<Int>()
    var inDegree = [Int](repeating: 0, count: n)
    var topo = [Int]()

    for i in 0...n {
        for elements in (graph[i] ?? []) {
            inDegree[elements] = inDegree[elements] + 1
        }
    }

    for i in 0..<inDegree.count {
        if inDegree[i] == 0 {
            q.push(i)
        }
    }

    while !q.isEmpty() {
        guard let top = q.pop() else { return [] }
        topo.append(top)

        for elements in graph[top] ?? [] {
            inDegree[elements] = inDegree[elements] - 1
            if inDegree[elements] == 0 {
                q.push(elements)
            }
        }
    }

    return topo
}
