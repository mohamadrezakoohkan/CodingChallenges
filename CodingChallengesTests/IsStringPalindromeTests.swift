//
//  IsStringPalindromeTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class IsStringPalindromeTests: XCTestCase {
    
    var sut: ((String) -> Bool)?

    override func setUp() {
        self.sut = { (input: String) in
           isStringPalindrome(input)
        }
    }

    override func tearDown() {
        self.sut = nil
    }

    func testCase1() {
        XCTAssert(self.sut!("rotator"))
    }

    func testCase2() {
        XCTAssert(self.sut!("Rats live on no evil star"))
    }
    
    func testCase3() {
        XCTAssertFalse(self.sut!("Never odd or even"))
    }
    
    func testCase4() {
        XCTAssertFalse(self.sut!("Hello, world"))
    }
}
