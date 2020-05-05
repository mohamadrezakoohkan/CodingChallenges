//
//  stringPermutations.swift
//  CodingChallenges
//
//  Created by Mohammad reza Koohkan on 2/16/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import Foundation


/// Write a function that prints all possible permutations of a given input string.
///
/// A string permutation is any given rearrangement of its letters, for example “boamtw” is a permutation of “wombat”.
func stringPermutations(_ input: String, permutations: inout [String]) {
    func iterator(_ input: String, permutations: inout [String]) {
        let length = input.count
        let collection = Array(input)
        guard length != 0 else { return }
        let current = permutations.last ??  ""
        for i in 0..<length {
            let left = String(collection[0..<i])
            let right = String(collection[i+1..<length])
            let newString = current + String(collection[i])
            permutations.append(newString)
            iterator(left + right, permutations: &permutations)
        }
    }
    let count = input.count
    iterator(input, permutations: &permutations)
    permutations = permutations.filter { $0.count == count }
}
