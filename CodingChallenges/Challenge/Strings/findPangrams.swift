//
//  findPangrams.swift
//  CodingChallenges
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import Foundation


/// Write a function that returns true if it is given a string that is an English pangram, ignoring letter
///
/// A pangram is a string that contains every letter of the alphabet at least once.
///
func findPangrams1(_ input: String) -> Bool {
    let chars = CharacterSet.punctuationCharacters
    let charCount = 26
    guard input.count >= charCount else { return false }
    let removeSpaces = input.lowercased().replacingOccurrences(of: " ", with: "")
    let uniqueCharacters = Set(removeSpaces).reduce(0) {
        let unicode = $1.unicodeScalars.first!
        return chars.contains(unicode) ? $0 : ($0 + 1)
    }
    return uniqueCharacters == charCount
}


// Slower solution
func findPangrams2(_ input: String) -> Bool {
    guard input.count >= 26 else { return false }
    let charactersSet = Set(input.lowercased())
    return charactersSet.filter { $0 >= "a" && $0 <= "z" }.count == 26
    
    // another solution but similar time complexity
    // return charactersSet.reduce(0) { $1 >= "a" && $1 <= "z" ? ($0 + 1) : $0 }
}

