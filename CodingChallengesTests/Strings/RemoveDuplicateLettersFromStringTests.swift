//
//  RemoveDuplicateLettersFromStringTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class RemoveDuplicateLettersFromStringTests: XCTestCase {
    
    var sut: ((String) -> String)?

    override func setUp() {
        self.sut = { (input: String) in
           removeDuplicateLettersFromString(input)
        }
    }

    override func tearDown() {
        self.sut = nil
    }

    func testCase1() {
        XCTAssert(self.sut!("wombat") == "wombat")
    }

    func testCase2() {
        XCTAssert(self.sut!("hello") == "helo")
    }
    
    func testCase3() {
        XCTAssert(self.sut!("Mississippi") == "Misp")
    }
}
