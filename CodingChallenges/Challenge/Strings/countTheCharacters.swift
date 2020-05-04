//
//  countTheCharacters.swift
//  CodingChallenges
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import Foundation


/// Write a function that accepts a string, and returns how many times a specific character appears, taking case into account.
///
///
func countTheCharacters(input: String, element: String.Element) -> Int {
    return input.filter { $0 == element }.count
}


// 10x slower than first
func countTheCharacters2(input: String, element: String.Element) -> Int {
    return input.reduce(0,{ $1 == element ? $0 + 1 : $0 })
}

// 100x slower
func countTheCharacters3(input: String, element: String.Element) -> Int {
    let countedSet = NSCountedSet(array: Array(input))
    return countedSet.count(for: element)
}


// O(1)
func countTheCharacters4(input: String, element: String.Element) -> Int {
    let modified = input.replacingOccurrences(of: String(element), with: "")
    return input.count - modified.count
}

