//
//  TwoStringContainsSameCharacterTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class TwoStringContainsSameCharacterTests: XCTestCase {
    
    var sut: ((String,String) -> Bool)?

    override func setUp() {
        self.sut = { (lhs: String, rhs: String) in
            return twoStringContainsSameCharacter((lhs,rhs))
        }
    }

    override func tearDown() {
        self.sut = nil
    }

    func testCase1() {
        XCTAssert(self.sut!("abca", "abca"))
    }

    func testCase2() {
        XCTAssert(self.sut!("abc", "cba"))
    }
    
    func testCase3() {
        XCTAssert(self.sut!(" a1 b2 ", "b 1 a 2"))
    }
    
    func testCase4() {
        XCTAssertFalse(self.sut!("abc", "abca"))
    }
    
    func testCase5() {
        XCTAssertFalse(self.sut!("abc", "Abc"))
    }
    
    func testCase6() {
        XCTAssertFalse(self.sut!("abc", "cbAa"))
    }
}

