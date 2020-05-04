//  Remove duplicate letters from a string
//  removeDuplicateLettersFromString.swift
//  CodingChallenges
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import Foundation

/// Write a function that accepts a string as its input, and returns the same string just with duplicate letters removed.
///
func removeDuplicateLettersFromString(_ input: String) -> String {
    return input.reduce("") { $0.contains($1) ? $0 : $0 + String($1) }
}

