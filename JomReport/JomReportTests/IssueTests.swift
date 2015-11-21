//
//  IssueTests.swift
//  JomReport
//
//  Created by Nik Muhammad Amin on 11/21/15.
//  Copyright © 2015 JomReport. All rights reserved.
//

import XCTest
import CoreLocation
@testable import JomReport

class IssueTests: XCTestCase {
    
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
    
    func testSubmitNewIssues() {
        let myDate: NSDate = NSDate()
        let myUser: User = User(email: "nik@jomreport.com", password: "123")
        
        let issue: Issue = Issue(title: "Broken traffic light", address: "Persint, 8, Cyberjaya", latitude: 2.9280745, longitude: 101.6728227, date: myDate, category: "Porthole", user: myUser)
        
        XCTAssertNotNil(issue, "issue should not be nil")
    }
    
    func testSortIssueByDateCreated() {
        
        let myDate1: NSDate = NSDate(timeIntervalSinceNow: +10 * 60)
        let myDate2: NSDate = NSDate(timeIntervalSinceNow: +20 * 60)
        let myDate3: NSDate = NSDate(timeIntervalSinceNow: +30 * 60)
        let myDate4: NSDate = NSDate(timeIntervalSinceNow: +40 * 60)
        let myDate5: NSDate = NSDate(timeIntervalSinceNow: +50 * 60)
        
        let myUser1: User = User(email: "nik1@jomreport.com", password: "12345")
        
        let issue1: Issue = Issue(title: "Broken traffic light at Jalan Tunku", address: "Taman Permaisuri, Cheras", latitude: 3.1062989, longitude: 101.7204418, date: myDate1, category: "Traffic Light", user: myUser1)
        
        let issue2: Issue = Issue(title: "Sensored Grafitti at KLCC bridge", address: "Suria KLCC, Jalan P Ramlee", latitude: 3.15775, longitude: 101.7085059, date: myDate2, category: "Grafitti", user: myUser1)
        
        let issue3: Issue = Issue(title: "A few toyota cars abundened beside the road", address: "Tesco @ Jalan Klang Lama", latitude: 3.094343, longitude: 101.6727299, date: myDate3, category: "Hazard", user: myUser1)
        
        let issue4: Issue = Issue(title: "Big potholes behind I-City entrance", address: "I-City Shah Alam", latitude: 3.063679, longitude: 101.4808275, date: myDate4, category: "Porthole", user: myUser1)
        
        let issue5: Issue = Issue(title: "Broken Pipes causes small flood nearby residence houses", address: "Persint, 8, Cyberjaya", latitude: 2.922915, longitude: 101.663396, date: myDate5, category: "Pipes", user: myUser1)
        
        var issues: [Issue] = []
        issues.append(issue3)
        issues.append(issue2)
        issues.append(issue1)
        issues.append(issue5)
        issues.append(issue4)
        
        issues = issues.sort { (firstIssue: Issue, secondIssue: Issue) -> Bool in
            return firstIssue.date.earlierDate(secondIssue.date) == firstIssue.date
        }
        
        for sortedIssue in issues {
            print(sortedIssue.title)
        }
    }
    
    func testSortIssueByLocation() {
        let currentLocation: CLLocation = CLLocation(latitude: 2.908749, longitude: 101.6549484)
        
        let myDate: NSDate = NSDate()
        let myUser1: User = User(email: "nik1@jomreport.com", password: "12345")
        
        let issue1: Issue = Issue(title: "Broken traffic light at Jalan Tunku", address: "Taman Permaisuri, Cheras", latitude: 3.1062989, longitude: 101.7204418, date: myDate, category: "Traffic Light", user: myUser1)
        
        let issue2: Issue = Issue(title: "Sensored Grafitti at KLCC bridge", address: "Suria KLCC, Jalan P Ramlee", latitude: 3.15775, longitude: 101.7085059, date: myDate, category: "Grafitti", user: myUser1)
        
        let issue3: Issue = Issue(title: "A few toyota cars abundened beside the road", address: "Tesco @ Jalan Klang Lama", latitude: 3.094343, longitude: 101.6727299, date: myDate, category: "Hazard", user: myUser1)
        
        let issue4: Issue = Issue(title: "Big potholes behind I-City entrance", address: "I-City Shah Alam", latitude: 3.063679, longitude: 101.4808275, date: myDate, category: "Porthole", user: myUser1)
        
        let issue5: Issue = Issue(title: "Broken Pipes causes small flood nearby residence houses", address: "Persint, 8, Cyberjaya", latitude: 2.922915, longitude: 101.663396, date: myDate, category: "Pipes", user: myUser1)
        
        var issues: [Issue] = []
        issues.append(issue3)
        issues.append(issue2)
        issues.append(issue1)
        issues.append(issue5)
        issues.append(issue4)
        
        
        issues = issues.sort({ (firstIssue: Issue, isSortedBefore secondIssue: Issue) -> Bool in
            return firstIssue.distanceFromCurrentLocation(currentLocation) < secondIssue.distanceFromCurrentLocation(currentLocation)
        })
        
        for sortedIssue in issues {
            print("\(sortedIssue.address), distance from MaGiC = \(sortedIssue.distanceFromCurrentLocation(currentLocation))m")
        }
        
        XCTAssertTrue(issues.last!.address == "Suria KLCC, Jalan P Ramlee", "Furthest away should be Suria KLCC, Jalan P Ramlee")
    }
}
