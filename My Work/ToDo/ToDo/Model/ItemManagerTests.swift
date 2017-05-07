//
//  ItemManagerTests.swift
//  ToDoTests
//
//  Created by Lai, Tom on 5/6/17.
//  Copyright © 2017 Lai, Tom. All rights reserved.
//

import XCTest
@testable import ToDo

class ItemManagerTests: XCTestCase {
    var systemUnderTest: ItemManager!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = ItemManager()
    }
    
    func testToDoCountInitiallyZero() {
        XCTAssertEqual(systemUnderTest.toDoCount, 0)
    }
    
    func testDoneCountInitiallyZero() {
        XCTAssertEqual(systemUnderTest.doneCount, 0)
    }
    
    func testAddItemIncreasesToDoCountToOne() {
        systemUnderTest.add(ToDoItem(title: ""))
        XCTAssertEqual(systemUnderTest.toDoCount, 1)
    }
    
    func testAfterAddingItemReturnsThatItem() {
        let expectedItem = ToDoItem(title: "minie")
        systemUnderTest.add(expectedItem)
        let actaulItem = systemUnderTest.item(at: 0)
        XCTAssertEqual(expectedItem.title, actaulItem.title)
    }
    
    func testCheckItemAt_ChangesCounts() {
        systemUnderTest.add(ToDoItem(title: ""))
        systemUnderTest.checkItem(at: 0)
        XCTAssertEqual(systemUnderTest.toDoCount, 0)
        XCTAssertEqual(systemUnderTest.doneCount, 1)
    }
}
