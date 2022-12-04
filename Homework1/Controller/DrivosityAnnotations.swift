//
//  Trips.swift
//  Homework1
//
//  Created by Rina Shabani on 1.12.22.
//

import UIKit
import MapKit

class DrivosityAnnotations: NSObject, MKAnnotation {

    let coordinate: CLLocationCoordinate2D
    
    init(coordinate: CLLocationCoordinate2D){
        self.coordinate = coordinate
    }

}


