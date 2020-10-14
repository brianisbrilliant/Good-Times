//
//  Establishment.swift
//  Good Times
//
//  Created by Professor Foster on 10/14/20.
//  Copyright © 2020 Professor Foster. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

struct Establishment {
    var id: Int                                 // an id for editing later.
    var coordinates: Coordinates    // the location of the establishment
    var name: String                            // what is the name of the establishment?
    var operatingHours: TimeInterval            // when is the est. open?
    var specials: [Special]                     // an array of specials, can 0 be mondays all the way to 6 for sundays?
    var favorite: Bool
    var phoneNumber: String                     // is there a better variable type for this?
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
}

struct Special {
    var specialHours: TimeInterval              // when is happy hour active?
    var specialDate: Date                       // what day is the special?
    var specialDescription: String              // describe the special.
}

struct Coordinates {
    var latitude: Double
    var longitude: Double
}
