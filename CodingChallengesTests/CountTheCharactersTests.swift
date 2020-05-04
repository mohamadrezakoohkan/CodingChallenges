//
//  CountTheCharactersTests.swift
//  CodingChallengesTests
//
//  Created by Mohammad reza Koohkan on 2/15/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class CountTheCharactersTests: XCTestCase {
    
    var sut1: ((String, String.Element) -> Int)?
    var sut2: ((String, String.Element) -> Int)?
    var sut3: ((String, String.Element) -> Int)?
    var sut4: ((String, String.Element) -> Int)?
    var measuringText: String = ""
    
    override func setUp() {
        
        for _ in 0...20000 {
            measuringText += "Thperainin qSpaein is zbecause ogreatxcwinterasiqwecanfeelwarm"
        }
                
        self.sut1 = { (input: String, element: String.Element) in
            countTheCharacters(input: input, element: element)
        }
        self.sut2 = { (input: String, element: String.Element) in
            countTheCharacters2(input: input, element: element)
        }
        self.sut3 = { (input: String, element: String.Element) in
            countTheCharacters3(input: input, element: element)
        }
        self.sut4 = { (input: String, element: String.Element) in
            countTheCharacters4(input: input, element: element)
        }
    }
    
    override func tearDown() {
        self.sut1 = nil
        self.sut2 = nil
        self.sut3 = nil
        self.sut4 = nil
    }
    
    func testFilterMeasure() {
        measure {
            XCTAssert(self.sut1!(self.measuringText,"a") == 140007)
        }
    }
    
    func testReduceMeasure() {
        measure {
            XCTAssert(self.sut2!(self.measuringText,"a") == 140007)
        }
    }
    
    func testCountedSetMeasure() {
        measure {
            XCTAssert(self.sut3!(self.measuringText,"a") == 140007)
        }
    }
    
    func testInlineSubscriptMeasure() {
        measure {
            XCTAssert(self.sut4!(self.measuringText,"a") == 140007)
        }
    }
    
    func testCase1() {
        XCTAssert(self.sut1!("The rain in Spain","a") == 2)
        XCTAssert(self.sut2!("The rain in Spain","a") == 2)
        XCTAssert(self.sut3!("The rain in Spain","a") == 2)
        XCTAssert(self.sut4!("The rain in Spain","a") == 2)
        
    }
    
    func testCase2() {
        XCTAssert(self.sut1!("Mississippi","i") == 4)
        XCTAssert(self.sut2!("Mississippi","i") == 4)
        XCTAssert(self.sut3!("Mississippi","i") == 4)
        XCTAssert(self.sut4!("Mississippi","i") == 4)
    }
    
    func testCase3() {
        XCTAssert(self.sut1!("Hacking with Swift","i") == 3)
        XCTAssert(self.sut2!("Hacking with Swift","i") == 3)
        XCTAssert(self.sut3!("Hacking with Swift","i") == 3)
        XCTAssert(self.sut4!("Hacking with Swift","i") == 3)
    }
}
