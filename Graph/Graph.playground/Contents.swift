// cycle
var g1 = [1: [2],
          2: [1,3],
          3: [2,4,5],
          4: [3,5],
          5: [3,4]]



var g2 = [1: [2],
          2: [1,3,7],
          3: [2,5],
          4: [6],
          5: [3,7],
          6: [4],
          7: [2,5]]

bfs(7, g2)
dfs(7, &g2)

// FOR TOPO sort u->v and u should be before v and it should be DAG
var t1 = [0: [],
          1: [],
          2: [3],
          3: [1],
          4: [0,1],
          5: [0,2]]

isCyclicInUnDirected(5, g1)

topoBFS(6, t1)
topoDFS(6, &t1)
