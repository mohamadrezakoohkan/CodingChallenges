//
//  runLengthEncoding.swift
//  CodingChallenges
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import Foundation

/// Write a function that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account.
///
func runLengthEncoding(_ input: String) -> String {
    guard input.count != 0 else { return "" }
    var result = ""
    var length = 0
    let letters = Array(input)
    for i in 0..<letters.count {
        length += 1
        if ((i + 1) == letters.count) || letters[i + 1] != letters[i] {
            result += "\(letters[i])\(length)"
            length = 0
        }
    }
    return result
}
