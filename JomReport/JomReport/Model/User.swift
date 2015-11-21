//
//  User.swift
//  JomReport
//
//  Created by Nik Muhammad Amin on 11/21/15.
//  Copyright © 2015 JomReport. All rights reserved.
//

import Foundation
import CoreLocation

class User {
    
    var email: String
    var password: String
    var fullName: String?
    var icNumber: String?
    var phoneNumber: String?
    var collectedPoints: Int?
    var address: String?
    var latitude: Double?
    var longitude: Double?
    var imageUrl: String?
    var issues: [Issue] = []
    
    init(email: String, password: String) {
        self.email = email
        self.password = password
    }
}
