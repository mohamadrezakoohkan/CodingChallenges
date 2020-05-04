//
//  twoStringContainsSameCharacter.swift
//  CodingChallenges
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import Foundation

/// Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
/// - find duplicate characters
///
func twoStringContainsSameCharacter(_ input: (lhs: String, rhs: String)) -> Bool {
    let lhs = input.lhs
    let rhs = input.rhs
    let equalLength = lhs.count == rhs.count
    return equalLength && lhs.sorted() == rhs.sorted()
}
