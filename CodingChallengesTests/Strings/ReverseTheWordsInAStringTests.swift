//
//  ReverseTheWordsInAStringTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/16/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class ReverseTheWordsInAStringTests: XCTestCase {
    
    var sut: ((String) -> String)?

    override func setUp() {
        self.sut = { (input: String) in
           reverseTheWordsInAString(input)
        }
    }

    override func tearDown() {
        self.sut = nil
    }

    func testCase1() {
        XCTAssert(self.sut!("Swift Coding Challenges") == "tfiwS gnidoC segnellahC")
    }

    func testCase2() {
        XCTAssert(self.sut!("iOS Coding Challenges") == "SOi gnidoC segnellahC")
    }
    
    func testCase3() {
        XCTAssert(self.sut!("The quick brown fox") == "ehT kciuq nworb xof")
    }
}
