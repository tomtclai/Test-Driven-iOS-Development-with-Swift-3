//
//  ToDoItemTests.swift
//  ToDo
//
//  Created by Lai, Tom on 5/6/17.
//  Copyright © 2017 Lai, Tom. All rights reserved.
//

import XCTest
@testable import ToDo
class ToDoItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testInitTakesTitleSetsTitle() {
        let item = ToDoItem(title: "Foo")
        XCTAssertEqual(item.title, "Foo", "should set title to `Foo`")
    }
    
    func testInitTakesTitleAndDescription() {
        let item = ToDoItem(title: "Test title", itemDescription: "Bar")

        XCTAssertEqual(item.itemDescription, "Bar", "should set itemDescription")
        
    }
    
    func testInitTakesTimeStampeSetsTimeStamp() {
        let item = ToDoItem(title: "Test title", timestamp: 0.0)
        XCTAssertEqual(item.timestamp, 0.0, "should set timestamp")
    }
    
    func testInitWhenGivenLocationSetsLocation() {
        let location = Location(name: "Foo")
        let item = ToDoItem(title: "", location: location)
        XCTAssertEqual(item.location?.name, "Foo")
    }
    
    func testEqualItemsAreEqual() {
        let first = ToDoItem(title: "")
        let second = ToDoItem(title: "")
        XCTAssertEqual(first, second)
    }
    
    func testNotEqualItemsAreNotEqual() {
        let first = ToDoItem(title: "")
        let second = ToDoItem(title: "1")
        XCTAssertNotEqual(first, second)
    }
    
    func testItemsWhenLocationDiffersAreNotEqual() {
        let first = ToDoItem(title: "", location: Location(name: "Foo"))
        let second = ToDoItem(title: "", location: Location(name: "Bar"))
        XCTAssertNotEqual(first, second)
    }
}
