//
//  FirstViewController.swift
//  OnTheWay
//
//  Created by Jonathan Deng on 6/12/17.
//  Copyright © 2017 Jonathan Deng. All rights reserved.
//

import UIKit
import MapKit

class FirstViewController: UIViewController {
    // MARK: class properties
    let initialLocation = CLLocation(latitude: 21.282772, longitude: -157.829444)
    let radius: CLLocationDistance = 1000

    // MARK: outlets
    @IBOutlet weak var mapView: MKMapView!
    

    override func viewDidLoad() {
      super.viewDidLoad()
      
      centerMapOnLocation(on: initialLocation, withRadius: radius)
    }

    override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
    }
    
  func centerMapOnLocation(on location: CLLocation, withRadius radius: CLLocationDistance) {
    let diameter = radius * 2
    let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, diameter, diameter)
    mapView.setRegion(coordinateRegion, animated: true)
  }
}

