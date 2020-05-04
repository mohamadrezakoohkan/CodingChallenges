//
//  isStringPalindrome.swift
//  CodingChallenges
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import Foundation


/// Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.
/// - palindrome
/// - ignoring-case
///
func isStringPalindrome(_ input: String) -> Bool {
    let lowercased = input.lowercased()
    return String(lowercased.reversed()) == lowercased
}
