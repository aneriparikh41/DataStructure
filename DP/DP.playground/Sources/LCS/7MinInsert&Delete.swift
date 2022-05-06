import Foundation

// Min no of insertion & deletion
// eg: "heap" "pea" require 2 deletion and 1 insertion

public func minInsertDeleteString(_ str1: String, _ str2: String) -> (Int, Int) {
    let lcs = LCSTable(str1, str2)
    return (str1.count - lcs, str2.count - lcs)
}
