//
//  vowelsAndConsonants.swift
//  CodingChallenges
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import Foundation


/// Given a string in English, return a tuple containing the number of vowels and consonants.
///
/// Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.
func vowelsAndConsonants1(_ input: String) -> (vowels: Int, consonants: Int) {
    let vowels = CharacterSet(charactersIn: "aeiou")
    let consonants = CharacterSet(charactersIn: "bcdfghjklmnpqrstvwxyz")
    return input.lowercased().reduce((vowels: 0, consonants: 0)) {
        switch true {
        case vowels.contains($1.unicodeScalars.first!):
            return ($0.vowels + 1, $0.consonants)
        case consonants.contains($1.unicodeScalars.first!):
            return ($0.vowels, $0.consonants + 1)
        default:
            return ($0.vowels, $0.consonants)
        }
    }
}


func vowelsAndConsonants2(_ input: String) -> (vowels: Int, consonants: Int) {
    let vowels = Array("aeiou")
    let consonants = Array("bcdfghjklmnpqrstvwxyz")
    return input.lowercased().reduce((vowels: 0, consonants: 0)) {
        switch true {
        case vowels.contains($1):
            return ($0.vowels + 1, $0.consonants)
        case consonants.contains($1):
            return ($0.vowels, $0.consonants + 1)
        default:
            return ($0.vowels, $0.consonants)
        }
    }
}
