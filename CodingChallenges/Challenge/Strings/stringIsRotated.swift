//
//  stringIsRotated.swift
//  CodingChallenges
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import Foundation

/// Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
///
/// - A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.
///
func stringIsRotated(_ input: String, rotatedString: String) -> Bool {
    guard input.count == rotatedString.count else { return false }
    return (input + input).contains(rotatedString)
}
