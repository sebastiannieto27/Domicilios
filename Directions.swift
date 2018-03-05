//
//  Directions.swift
//  PruebaDomicilios
//
//  Created by Fabian Nieto on 3/4/18.
//  Copyright © 2018 Yash Patel. All rights reserved.
//

import MapKit
import AddressBook


class Directions : NSObject,MKAnnotation
{
    let title: String?
    let locationName : String?
    let coordinate: CLLocationCoordinate2D
    
    init(title : String?, locationName : String?, coordinate : CLLocationCoordinate2D)
    {
        self.title=title
        self.locationName=locationName
        self.coordinate=coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
}


