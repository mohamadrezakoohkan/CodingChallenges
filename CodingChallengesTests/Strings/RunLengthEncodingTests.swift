//
//  RunLengthEncodingTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class RunLengthEncodingTests: XCTestCase {
    
    var sut: ((String) -> String)?

    override func setUp() {
        self.sut = { (input: String) in
           runLengthEncoding(input)
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
