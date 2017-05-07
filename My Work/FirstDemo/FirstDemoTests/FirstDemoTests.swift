//
//  FirstDemoTests.swift
//  FirstDemoTests
//
//  Created by Lai, Tom on 5/6/17.
//  Copyright © 2017 Lai, Tom. All rights reserved.
//

import XCTest
@testable import FirstDemo

class FirstDemoTests: XCTestCase {
    var viewController: ViewController!
    override func setUp() {
        super.setUp()
        viewController = ViewController()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_NumberOfVowels_WhenPassedDominik_ReturnsThree() {
        let string = "Dominik"
        let numberOfVowels = viewController.numberOfVowels(in: string)
        XCTAssertEqual(numberOfVowels, 3, "should find 3 vowels in dominik")
    }
    
    func test_MakeHeadline_ReturnsStringWithEachWordStartCapital2() {
        let input = "Here is another Example"
        let expectedOutput  = "Here Is Another Example"
        test_MakeHeadline_ReturnsStringWithEachWordStartCapital(input: input, expectedOutput: expectedOutput)
    }
    func test_MakeHeadline_ReturnsStringWithEachWordStartCapital3() {
        let input = "this is A test headline"
        let expectedOutput = "This Is A Test Headline"
        test_MakeHeadline_ReturnsStringWithEachWordStartCapital(input: input, expectedOutput: expectedOutput)
    }
    
    
    func test_MakeHeadline_ReturnsStringWithEachWordStartCapital(input: String, expectedOutput: String) {
        let headline = viewController.makeHeadline(from: input)
        XCTAssertEqual(headline, expectedOutput)
    }

}
