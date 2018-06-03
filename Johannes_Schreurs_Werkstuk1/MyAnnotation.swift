//
//  MyAnnotation.swift
//  Johannes_Schreurs_Werkstuk1
//
//  Created by Johannes Schreurs on 24/05/2018.
//  Copyright © 2018 Johannes Schreurs. All rights reserved.
//

import Foundation
import MapKit
import UIKit

class MyAnnotation: NSObject, MKAnnotation{
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    override init(){
        coordinate = CLLocationCoordinate2D()
        title = ""
    }
    
    init(coordinate:CLLocationCoordinate2D, title:String){
        self.coordinate = coordinate
        self.title = title
    }
}
