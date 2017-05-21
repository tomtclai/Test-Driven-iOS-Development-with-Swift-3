//
//  LocationTests.swift
//  ToDo
//
//  Created by Lai, Tom on 5/7/17.
//  Copyright © 2017 Lai, Tom. All rights reserved.
//

import XCTest
import CoreLocation
@testable import ToDo
class LocationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testInitWhenGivenNameSetsName() {
        let name = "FOOO"
        let location = Location(name: name)
        XCTAssertEqual(location.name, name)
    }
    func testInitWhenGivenCoordinateSetsCoordinate() {
        let coordinate = CLLocationCoordinate2D(latitude: 1, longitude: 2)
        let location = Location(name: "", coordinate: coordinate)
        XCTAssertEqual(location.coordinate?.latitude, coordinate.latitude)
        XCTAssertEqual(location.coordinate?.longitude, coordinate.longitude)
    }
 
    func testEqualLocationsAreEqual() {
        let first = Location(name: "Foo")
        let second = Location(name: "Foo")
        XCTAssertEqual(first, second)
    }
    
    func testLocationsWhenLatitudeDIffersAreNotEqual() {
        let firstCoordinate = CLLocationCoordinate2D(latitude: 1, longitude: 0)
        let firstLocation = Location(name: "Foo", coordinate: firstCoordinate)
        let secondCoordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
        let secondLocation = Location(name: "Foo", coordinate: secondCoordinate)
        XCTAssertNotEqual(firstLocation, secondLocation)
    }
}
