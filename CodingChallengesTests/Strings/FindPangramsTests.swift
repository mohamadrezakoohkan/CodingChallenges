//
//  FindPangramsTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class FindPangramsTests: XCTestCase {
    
    var sut1: ((String) -> Bool)?
    var sut2: ((String) -> Bool)?


    override func setUp() {
        self.sut1 = { (input: String) in
            findPangrams1(input)
        }
        self.sut2 = { (input: String) in
            findPangrams2(input)
        }
    }

    override func tearDown() {
        self.sut1 = nil
        self.sut2 = nil
    }
    
    
    func testReduceUsingUnicodeScalarsMeasure() {
        measure {
            XCTAssert(self.sut1!("a!bcde@fghi@jklmnopqr,st uvwxyz!@#"))
        }
    }
    
    func testFilterMeasure() {
        measure {
            XCTAssert(self.sut2!("a!bcde@fghi@jklmnopqr,st uvwxyz!@#"))
        }
    }
    

    func testCase1() {
        XCTAssert(self.sut1!("a!bcde@fghi@jklmnopqr,st uvwxyz!@#"))
        XCTAssert(self.sut2!("a!bcde@fghi@jklmnopqr,st uvwxyz!@#"))
    }
    
    func testCase2() {
        XCTAssert(self.sut1!("The quick brown fox jumps over the lazy dog"))
        XCTAssert(self.sut2!("The quick brown fox jumps over the lazy dog"))
    }

    func testCase3() {
        XCTAssertFalse(self.sut1!("Hello world!"))
        XCTAssertFalse(self.sut2!("Hello world!"))
    }
    

}
