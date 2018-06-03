//
//  MockDB.swift
//  Johannes_Schreurs_Werkstuk1
//
//  Created by Johannes Schreurs on 24/05/2018.
//  Copyright © 2018 Johannes Schreurs. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class MockDB{
    
    var mockdb = [Persoon]()
    
    func getAll() -> Array<Persoon>{
        let persoon1 = Persoon()
        let persoon2 = Persoon(voornaam: "Johannes", naam: "Schreurs", adres: "Sint-Guidocorso 24 1070 Anderlecht", telefoonNummer: "0492645267", lat: 50.834870, long: 4.305004, image: "johannes_foto")
        let persoon3 = Persoon(voornaam: "Piet", naam: "Vissers", adres: "De zee", telefoonNummer: "02876876", lat: 1, long: 1, image: "default_image")
        let persoon4 = Persoon(voornaam: "Mieke", naam: "Testers", adres: "Papegaaienstraat 23 9000 Gent", telefoonNummer: "02837383", lat: 51.050771, long: 3.712916, image: "default_image")
        let persoon5 = Persoon(voornaam: "Donald", naam: "Trump", adres: "725 Fifth Avenue, at the corner of East 56th Street in Midtown Manhattan, New York City", telefoonNummer: "Private", lat: 40.75749697, long: -73.971162782, image: "donald_trump")
        let persoon6 = Persoon(voornaam: "Franciscus", naam: "Popeman", adres: "The Vatican", telefoonNummer: "Private", lat: 41.902187, long: 12.456782, image: "pope")
        let persoon7 = Persoon(voornaam: "Hannelore", naam: "Van Besouw", adres: "Artesiëstraat 46 1000 Brussel", telefoonNummer: "02020202", lat: 50.842607, long: 4.341396, image: "hannelore")
        
        mockdb.append(persoon1)
        mockdb.append(persoon2)
        mockdb.append(persoon3)
        mockdb.append(persoon4)
        mockdb.append(persoon5)
        mockdb.append(persoon6)
        mockdb.append(persoon7)
        
        return mockdb;
    }
}
