//
//  FirstViewController.swift
//  OnTheWay
//
//  Created by Jonathan Deng on 6/12/17.
//  Copyright © 2017 Jonathan Deng. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class FirstViewController: UIViewController, CLLocationManagerDelegate {
  // MARK: class properties
  let initialLocation = CLLocation(latitude: 21.282772, longitude: -157.829444)
  let radius: CLLocationDistance = 1000
  let locationManager: CLLocationManager = CLLocationManager()

    // MARK: outlets
    @IBOutlet weak var mapView: MKMapView!
    

    override func viewDidLoad() {
      super.viewDidLoad()
      
      // center map on initial location and print location
      centerMapOnLocation(on: initialLocation, withRadius: radius)
      initLocationManager()
      getLocation()
    }

    override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
    }
  
  // MARK: Location based methods
  func centerMapOnLocation(on location: CLLocation, withRadius radius: CLLocationDistance) {
    let diameter = radius * 2
    let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, diameter, diameter)
    mapView.setRegion(coordinateRegion, animated: true)
  }
  
  func initLocationManager() {
    locationManager.delegate = self
    locationManager.desiredAccuracy = kCLLocationAccuracyBest
    locationManager.requestAlwaysAuthorization()
    locationManager.startUpdatingLocation()
  }
  
  func getLocation() {
    let locValue: CLLocationCoordinate2D = locationManager.location!.coordinate
    print("\(locValue.latitude) \(locValue.longitude)")
  }
}

