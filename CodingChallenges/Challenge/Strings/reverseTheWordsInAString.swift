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
    let collection = input.split(separator: separator)
    let reversedIndexes = collection.map { $0.reversed() }
    let reversedString = reversedIndexes.joined(separator: String(separator))
    let result = String(reversedString)
    return result
}
