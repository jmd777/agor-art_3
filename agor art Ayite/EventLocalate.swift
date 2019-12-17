//
//  EventLocalate.swift
//  agor art Ayite
//
//  Created by ayite  on 15/12/2019.
//  Copyright © 2019 ayite . All rights reserved.
//

import UIKit
import MapKit

class EventLocalate: NSObject,MKAnnotation {
    
    let title: String?
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
       self.title = title
       self.locationName = locationName
       self.discipline = discipline
       self.coordinate = coordinate
       
       super.init()
     }
     
     var subtitle: String? {
       return locationName
     }

}


