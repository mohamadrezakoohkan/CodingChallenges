//
//  StringIsRotatedTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class StringIsRotatedTests: XCTestCase {
    
    var sut: ((String,String) -> Bool)?

    override func setUp() {
        self.sut = { (input: String, rotatedString: String) in
            stringIsRotated(input, rotatedString: rotatedString)
        }
    }

    override func tearDown() {
        self.sut = nil
    }

    func testCase1() {
        XCTAssert(self.sut!("swift","ftswi"))
    }
    
    func testCase2() {
        XCTAssert(self.sut!("abcde ","cde ab"))
    }
    
    func testCase3() {
        XCTAssertFalse(self.sut!("abcde","abced"))
    }
    
    func testCase4() {
        XCTAssertFalse(self.sut!("abcdefgh","bcdefgh"))
    }

}
