//
//  areTheLettersUniqueTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class AreTheLettersUniqueTests: XCTestCase {
    
    var sut: ((String,_ secondSolution: Bool) -> Bool)?

    override func setUp() {
        self.sut = { (input: String, secondSolution: Bool) in
           areTheLettersUnique(input, secondSolution: secondSolution)
        }
    }

    override func tearDown() {
        self.sut = nil
    }

    func testCase1() {
        XCTAssert(self.sut!("No duplicates",false) == true)
        XCTAssert(self.sut!("No duplicates",true) == true)
    }

    func testCase2() {
        XCTAssert(self.sut!("abcdefghijklmnopqrstuvwxyz",false) == true)
        XCTAssert(self.sut!("abcdefghijklmnopqrstuvwxyz",true) == true)

    }
    
    func testCase3() {
        XCTAssert(self.sut!("AaBbCc", false) == true)
        XCTAssert(self.sut!("AaBbCc", true) == true)
    }
    
    func testCase4() {
        XCTAssert(self.sut!("Hello, world", false) == false)
        XCTAssert(self.sut!("Hello, world", true) == false)
    }
}
