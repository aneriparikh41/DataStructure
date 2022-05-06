import Foundation

// Min no of deletion to make it palindrome
// eg: adbcba ans = 1
// Min no of insertion to make it a palindrome == Min no of deletion

public func LPSDeletionForP(_ str: String) -> Int {
   return str.count - LPS(str)
}
