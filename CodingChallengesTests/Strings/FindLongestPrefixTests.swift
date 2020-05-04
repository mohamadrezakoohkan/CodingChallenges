//
//  FindLongestPrefixTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class FindLongestPrefixTests: XCTestCase {
    
    var sut: ((String) -> String)?

    override func setUp() {
        self.sut = { (input: String) in
            return findLongestPrefix(input)
        }
    }

    override func tearDown() {
        self.sut = nil
    }

    func testCase1() {
        XCTAssert(self.sut!("swift switch swill swim") == "swi")
    }

    func testCase2() {
        XCTAssert(self.sut!("flip flap flop") == "fl")
    }
}

