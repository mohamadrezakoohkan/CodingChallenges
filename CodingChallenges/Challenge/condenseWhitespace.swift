//
//  condenseWhitespace.swift
//  CodingChallenges
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import Foundation


/// Write a function that returns a string with any consecutive spaces replaced with a single space.
///
func condenseWhitespace(_ input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression)
}
