//
//  findLongestPrefix.swift
//  CodingChallenges
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import Foundation


/// Write a function that accepts a string of words with a similar prefix, separated by spaces, and returns the longest substring that prefixes all words.
///
func findLongestPrefix(_ input: String) -> String {
    let words = input.split(separator: " ")
    guard let first = words.first else { return "" }
    var currentPrefix = ""
    var bestPrefix = ""
    for letter in first {
        currentPrefix.append(letter)
        for word in words {
            if !word.hasPrefix(currentPrefix) {
                return bestPrefix
            }
        }
        bestPrefix = currentPrefix
    }
    return bestPrefix
}
