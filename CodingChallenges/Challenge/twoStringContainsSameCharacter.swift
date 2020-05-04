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
    let lhs = input.lhs.sorted()
    let rhs = input.rhs.sorted()
    return lhs == rhs
}
