//
//  MapViewController.swift
//  Johannes_Schreurs_Werkstuk1
//
//  Created by Johannes Schreurs on 22/05/2018.
//  Copyright © 2018 Johannes Schreurs. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    var personen = MockDB().getAll()
    var locationManager = CLLocationManager()

    @IBOutlet weak var myMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        for persoon in personen{
            print(persoon.coordinaten!)
            let annotation = MyAnnotation(coordinate: CLLocationCoordinate2D(latitude: (persoon.coordinaten?.latitude)!, longitude: (persoon.coordinaten?.longitude)!), title: persoon.naam! + " " + persoon.voornaam!);
            self.myMapView.addAnnotation(annotation)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        mapView.setRegion(region, animated: true)
    }

}
