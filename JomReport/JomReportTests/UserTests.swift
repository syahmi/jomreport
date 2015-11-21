//
//  UserTests.swift
//  JomReport
//
//  Created by Nik Muhammad Amin on 11/21/15.
//  Copyright © 2015 JomReport. All rights reserved.
//

import XCTest
@testable import JomReport

class UserTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testUserLogin() {
        let user: User = User(email: "nik@jomreport.com", password: "12345")
        XCTAssert(user.email == "nik@jomreport.com")
        XCTAssert(user.password == "12345")
    }
    
    func testPasswordLength() {
        let user: User = User(email: "nik@jomreport.com", password: "12345")
        let passwordString:NSString = user.password
        XCTAssert((passwordString.length) >= 5)
    }
    
    func testCreateManyUsers() {
        let user1: User = User(email: "nik@jomreport.com", password: "12345")
        let user2: User = User(email: "jeremy@jomreport.com", password: "12345")
        let user3: User = User(email: "jinghong@jomreport.com", password: "12345")
        
        var users:[User] = []
        users.append(user1)
        users.append(user2)
        users.append(user3)
        
        for user in users {
            print(user.email)
        }
    }
}
