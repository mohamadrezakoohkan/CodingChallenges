//
//  CondenseWhitespaceTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class CondenseWhitespaceTests: XCTestCase {
    
    var sut: ((String) -> String)?

    override func setUp() {
        self.sut = { (input: String) in
           condenseWhitespace(input)
        }
    }

    override func tearDown() {
        self.sut = nil
    }

    func testCase1() {
        XCTAssert(self.sut!("a   b  c     ") == "a b c ")
    }

    func testCase2() {
        XCTAssert(self.sut!("abc") == "abc")
    }
    
    func testCase3() {
        XCTAssert(self.sut!("     abc   ") == " abc ")
    }
}
