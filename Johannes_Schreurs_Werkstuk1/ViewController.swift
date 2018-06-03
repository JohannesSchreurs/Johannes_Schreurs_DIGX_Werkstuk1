//
//  ViewController.swift
//  Johannes_Schreurs_Werkstuk1
//
//  Created by Johannes Schreurs on 22/05/2018.
//  Copyright © 2018 Johannes Schreurs. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()
    
    var doorgestuurdePersoon = Persoon()
    
    @IBOutlet weak var myMapView: MKMapView!
    @IBOutlet weak var lblImage: UIImageView!
    @IBOutlet weak var lblVoornaamEnAchternaam: UILabel!
    @IBOutlet weak var lblAdres: UILabel!
    @IBOutlet weak var lblTelefoonNummer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.lblImage.image = UIImage(named: doorgestuurdePersoon.image!)
        self.lblVoornaamEnAchternaam.text = doorgestuurdePersoon.voornaam! + " " + doorgestuurdePersoon.naam!
        self.lblAdres.text = doorgestuurdePersoon.adres!
        self.lblTelefoonNummer.text = doorgestuurdePersoon.telefoonNummer!
        let annotation = MyAnnotation(coordinate: CLLocationCoordinate2D(latitude: (doorgestuurdePersoon.coordinaten?.latitude)!, longitude: (doorgestuurdePersoon.coordinaten?.longitude)!), title: doorgestuurdePersoon.naam! + " " + doorgestuurdePersoon.voornaam!);
        self.myMapView.addAnnotation(annotation)
        self.myMapView.selectAnnotation(annotation, animated: true)
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toonDetailFoto"
        {
            let vc = segue.destination as! detailFotoViewController
            vc.imageVanPersoon = UIImage(named: doorgestuurdePersoon.image!)!
        }
    }
    
    internal func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        let center = CLLocationCoordinate2D(latitude: (view.annotation?.coordinate.latitude)!, longitude: (view.annotation?.coordinate.longitude)!)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        myMapView.setRegion(region, animated: true)
    }


}

