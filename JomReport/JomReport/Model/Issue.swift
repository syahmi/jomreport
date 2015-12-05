//
//  Issue.swift
//  JomReport
//
//  Created by Nik Muhammad Amin on 11/21/15.
//  Copyright © 2015 JomReport. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit

class Issue {
    var title: String
    //var imageUrls: [UIImage] = []
    var thumbnailImage: UIImage?
    var comment: String?
    var address: String
    var latitude: Double
    var longitude: Double
    var date: NSDate
    var category: String
    var user: User
    
    init(title: String, address: String, latitude: Double, longitude: Double, thumbnailImage: UIImage?, date: NSDate, category: String, user: User) {
        self.title = title
        self.address = address
        self.latitude = latitude
        self.longitude = longitude
        self.thumbnailImage = thumbnailImage
        self.date = date
        self.category = category
        self.user = user
    }
    
    
    
    func distanceFromCurrentLocation(currentLocation: CLLocation) -> CLLocationDistance {
        let issueLocation: CLLocation = CLLocation(latitude: latitude, longitude: longitude)
        return issueLocation.distanceFromLocation(currentLocation)
    }
}