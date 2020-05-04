//
//  DoesOneStringContainsAnotherStringTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class DoesOneStringContainsAnotherStringTests: XCTestCase {
    
    var sut: ((String, String) -> Bool)?

    override func setUp() {
        self.sut = { (input: String,contains: String) in
           doesOneStringContainsAnotherString(input: input, contains: contains)
        }
    }

    override func tearDown() {
        self.sut = nil
    }

    func testCase1() {
        XCTAssert(self.sut!("Hello, world","Hello"))
    }

    func testCase2() {
        XCTAssert(self.sut!("Hello, world","WORLD"))
    }
    
    func testCase3() {
        XCTAssertFalse(self.sut!("Hello, world","Goodbye"))
    }
}
