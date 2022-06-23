import Foundation

public func noOfIsland(_ char: inout [[String]]) ->  Int {

    var noOfIsland = 0
    if char.count == 0 { return 0 }

    for i in 0...char.count - 1 {
        for j in 0...char[0].count - 1 {
            if char[i][j] == "1" {
                dfs(&char, i, j)
                noOfIsland = noOfIsland + 1
            }
        }
    }

    return noOfIsland
}

private func dfs(_ grid: inout [[String]], _ row: Int, _ col : Int) {
    if row < 0 || col < 0 || row > grid.count - 1 || col > grid[0].count - 1 || grid[row][col] == "0" || grid[row][col] == "#" {
        return
    }
    
    grid[row][col] = "#"
    dfs(&grid, row-1, col)
    dfs(&grid, row+1, col)
    dfs(&grid, row, col-1)
    dfs(&grid, row, col+1)
}
