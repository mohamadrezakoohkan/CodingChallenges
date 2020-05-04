//
//  ThreeDiffrentLettersTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class ThreeDiffrentLettersTests: XCTestCase {
    
    var sut: ((String,String) -> Bool)?

    override func setUp() {
        self.sut = { (lhs: String, rhs: String) in
            return threeDiffrentLetters((lhs,rhs))
        }
    }

    override func tearDown() {
        self.sut = nil
    }
    
    func testCase1() {
        XCTAssert(self.sut!("Clamp", "Cramp"))
    }

    func testCase2() {
        XCTAssert(self.sut!("Clamp", "Crams"))
    }
    
    func testCase3() {
        XCTAssert(self.sut!("Clamp", "Grams"))
    }
    
    func testCase4() {
        XCTAssertFalse(self.sut!("Clamp", "Grans"))
    }
    
    func testCase5() {
        XCTAssertFalse(self.sut!("Clamp", "Clam"))
    }
}

