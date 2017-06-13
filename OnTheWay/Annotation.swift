//
//  Annotation.swift
//  OnTheWay
//
//  Created by Jonathan Deng on 6/12/17.
//  Copyright © 2017 Jonathan Deng. All rights reserved.
//

import MapKit

class MapAnnotation: NSObject, MKAnnotation {
    let title: String?
    let locationName: String
    let coordinate: CLLocationCoordinate2D

    init(title: String, locationName: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.coordinate = coordinate
        // it seems in swift you init the super class after declaring all the properties
        super.init();
    }
}
