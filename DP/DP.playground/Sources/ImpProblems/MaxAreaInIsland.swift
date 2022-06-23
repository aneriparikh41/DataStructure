import Foundation

public func maxArea(_ char: inout [[String]]) ->  Int {

    var ans = 0
    if char.count == 0 { return 0 }

    for i in 0...char.count - 1 {
        for j in 0...char[0].count - 1 {
            if char[i][j] == "1" {
                ans = max(ans,dfs(&char, i, j))
            }
        }
    }

    return ans
}

private func dfs(_ grid: inout [[String]], _ row: Int, _ col : Int) -> Int {
    if row < 0 || col < 0 || row > grid.count - 1 || col > grid[0].count - 1 || grid[row][col] == "0" || grid[row][col] == "#" {
        return 0
    }

    grid[row][col] = "#"
    return 1 +
    dfs(&grid, row-1, col) +
    dfs(&grid, row+1, col) +
    dfs(&grid, row, col-1) +
    dfs(&grid, row, col+1)
}
