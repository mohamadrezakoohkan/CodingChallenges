//
//  threeDiffrentLetters.swift
//  CodingChallenges
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import Foundation

/// Write a function that accepts two strings, and returns true if they are identical in length but have no more than three different letters, taking case and string order into account.
///
func threeDiffrentLetters(_ input: (lhs: String, rhs: String)) -> Bool {
    guard input.lhs.count == input.rhs.count else { return false }
    let first = Array(input.lhs)
    let second = Array(input.rhs)
    return first.enumerated().reduce(0) { (second[$1.offset] == $1.element) ? $0 : ($0 + 1) } <= 3
}
//"aaaacb" 3 | "abbbbb" 4
