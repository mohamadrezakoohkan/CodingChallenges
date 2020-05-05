//
//  reverseTheWordsInAString.swift
//  CodingChallenges
//
//  Created by Mohammad reza Koohkan on 2/16/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import Foundation

/// Write a function that returns a string with each of its words reversed but in the original order, without using a loop.
///
func reverseTheWordsInAString(_ input: String,
                              separatedBy separator: String.Element = " ") -> String {
    let words = input.split(separator: separator)
    let reversed = words.map { $0.reversed() }
    let sentense = reversed.joined(separator: String(separator))
    return String(sentense)
}
