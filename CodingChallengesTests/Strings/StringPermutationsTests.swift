//
//  StringPermutationsTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/16/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class StringPermutationsTests: XCTestCase {
    
    var sut: ((String, inout [String]) -> Void)?

    override func setUp() {
        self.sut = { (input: String, permutations: inout [String]) in
            stringPermutations(input, permutations: &permutations)
        }
    }

    override func tearDown() {
        self.sut = nil
    }

    func testLargeDataMeasure() {
        measure {
            var result = [String]()
            self.sut!("engineer",&result)
            XCTAssert(result.count == 40320)
        }
    }
    
    func testCase1() {
        var result = [String]()
        self.sut!("ab", &result)
        XCTAssert(result == ["ab","ba"])
    }

    func testCase2() {
        var result = [String]()
        self.sut!("abc", &result)
        XCTAssert(result == ["abc", "acb", "bac", "bca", "cab", "cba"])
    }
    
    func testCase3() {
        var result = [String]()
        self.sut!("read",&result)
        XCTAssert(result.count == 24)
    }
    
    func testCase4() {
        var result = [String]()
        self.sut!("alien",&result)
        XCTAssert(result.count == 120)
    }
    
    func testCase5() {
        var result = [String]()
        self.sut!("wombat",&result)
        XCTAssert(result.count == 720)
    }
}
