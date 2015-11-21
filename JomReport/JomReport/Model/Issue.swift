//
//  Issue.swift
//  JomReport
//
//  Created by Nik Muhammad Amin on 11/21/15.
//  Copyright © 2015 JomReport. All rights reserved.
//

import Foundation

class Issue {
    var title: String
    var imageUrls: [String] = []
    var comment: String?
    var address: String
    var latitude: Double
    var longitude: Double
    var date: String
    var category: String
    var user: User
    
    init(title: String, address: String, latitude: Double, longitude: Double, date: String, category: String, user: User) {
        self.title = title
        self.address = address
        self.latitude = latitude
        self.longitude = longitude
        self.date = date
        self.category = category
        self.user = user
    }
}