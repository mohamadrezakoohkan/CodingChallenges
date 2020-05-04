//
//  doesOneStringContainsAnotherString.swift
//  CodingChallenges
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import Foundation

/// Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method.
/// - create contains()
/// - ignoring case
/// - dont use contains()
///
func doesOneStringContainsAnotherString(input: String, contains: String) -> Bool {
    return input.count >= contains.count
        ? (input.range(of: contains, options: .caseInsensitive) != nil)
        : false
}
