//
//  Persoon.swift
//  Johannes_Schreurs_Werkstuk1
//
//  Created by Johannes Schreurs on 22/05/2018.
//  Copyright © 2018 Johannes Schreurs. All rights reserved.
//

import Foundation
import MapKit
import UIKit

class Persoon {
    var voornaam:String?
    var naam:String?
    var adres:String?
    var telefoonNummer:String?
    var coordinaten:CLLocationCoordinate2D?
    var image:String?
    
    init(voornaam: String, naam: String, adres: String, telefoonNummer: String, lat: Double, long: Double, image: String){
        self.voornaam = voornaam
        self.naam = naam
        self.adres = adres
        self.telefoonNummer = telefoonNummer
        self.coordinaten = CLLocationCoordinate2D(latitude: lat, longitude: long)
        self.image = image
    }
    
    init(){
        self.voornaam = "Jan"
        self.naam = "Peeters"
        self.adres = "Nijverheidskaai 170 1070 Anderlecht"
        self.telefoonNummer = "0483983839"
        self.coordinaten = CLLocationCoordinate2D(latitude: 50.841045, longitude: 4.323688)
        self.image = "default_image"
    }
}
