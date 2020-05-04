//
//  VowelsAndConsonantsTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class VowelsAndConsonantsTests: XCTestCase {
    
    var sut1: ((String) -> (vowels: Int, consonants: Int))?
    var sut2: ((String) -> (vowels: Int, consonants: Int))?


    override func setUp() {
        self.sut1 = { (input: String) in
            vowelsAndConsonants1(input)
        }
        self.sut2 = { (input: String) in
            vowelsAndConsonants2(input)
        }
    }

    override func tearDown() {
        self.sut1 = nil
        self.sut2 = nil
    }
    
    
    func testReduceWithCharacterSetMeasure() {
        measure {
            XCTAssert(self.sut1!("Swift Coding Challenges") == (vowels: 6, consonants: 15))
        }
    }
    
    func testReduceWithNormalStringMeasure() {
        measure {
            XCTAssert(self.sut2!("Swift Coding Challenges") == (vowels: 6, consonants: 15))
        }
    }
    

    func testCase1() {
        XCTAssert(self.sut1!("Swift Coding Challenges") == (vowels: 6, consonants: 15))
        XCTAssert(self.sut2!("Swift Coding Challenges") == (vowels: 6, consonants: 15))
    }
    
    func testCase2() {
        XCTAssert(self.sut1!("Mississippi") == (vowels: 4, consonants: 7))
        XCTAssert(self.sut2!("Mississippi") == (vowels: 4, consonants: 7))
    }
}
