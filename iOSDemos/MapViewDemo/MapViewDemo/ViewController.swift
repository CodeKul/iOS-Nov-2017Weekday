//
//  ViewController.swift
//  MapViewDemo
//
//  Created by Varun on 24/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var myMapView : MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let annotation = MKPointAnnotation()
        annotation.coordinate.latitude = 18.509859
        annotation.coordinate.longitude = 73.833111

        annotation.subtitle = "Codekul"
        myMapView.addAnnotation(annotation)
    }
    
    func mapViewDidFinishRenderingMap(_ mapView: MKMapView, fullyRendered: Bool) {
        
        if fullyRendered {
            let span = MKCoordinateSpanMake(0.2, 0.2)
            let coordinate = CLLocationCoordinate2D(latitude: 18.509859, longitude: 73.833111)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            myMapView.setRegion(region, animated: true)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

