//
//  StringPermutationsTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/16/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class StringPermutationsTests: XCTestCase {
    
    var sut: ((String, inout [String]) -> Void)?

    override func setUp() {
        self.sut = { (input: String, permutations: inout [String]) in
            stringPermutations(input, permutations: &permutations)
        }
    }

    override func tearDown() {
        self.sut = nil
    }

    func testCase1() {
        XCTAssert(self.sut!("aabbcc") == "a2b2c2")
    }

    func testCase2() {
        XCTAssert(self.sut!("aaabaaabaaa") == "a3b1a3b1a3")
    }
    
    func testCase3() {
        XCTAssert(self.sut!("aaAAaa") == "a2A2a2")
    }
}
