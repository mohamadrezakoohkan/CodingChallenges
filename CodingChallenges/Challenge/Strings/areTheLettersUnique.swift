//
//  areTheLettersUnique.swift
//  CodingChallenges
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import Foundation


/// Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.
///  - case-sensitive
///  - unique letters
///
func areTheLettersUnique(_ input: String, secondSolution: Bool) -> Bool {
    if secondSolution {
        return Set(input).count == input.count
    }else{
        var uniqueLetters = [Character]()
        for letter in input {
            if uniqueLetters.contains(letter) {
                return false
            }
            uniqueLetters.append(letter)
        }
        return true
    }
}
