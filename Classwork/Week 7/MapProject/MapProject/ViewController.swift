//
//  ViewController.swift
//  MapProject
//
//  Created by Fair, Josh on 11/30/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

let searchRadius: CLLocationDistance = 1000
    
    @IBOutlet weak var map: MKMapView!
    let locman = CLLocationManager()
    
    @IBOutlet weak var showCurrentLocation: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.map.mapType = MKMapType.Hybrid
        let initialLocation = CLLocation(latitude: 38.7904, longitude: -77.033)
        

        centerOnLocation(initialLocation)
        
        self.map.delegate = self
        
        self.locman.delegate = self
        self.locman.desiredAccuracy = kCLLocationAccuracyBest
        self.locman.activityType = .Fitness
        self.locman.startUpdatingLocation()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getLocation(sender: AnyObject) {
        let loc = self.map.userLocation.location
        if loc == nil {
            print("Error")
            return
        }
        
        let geo = CLGeocoder()
        geo.reverseGeocodeLocation(loc!) { (placemarks, errors) -> Void in
            if placemarks != nil {
                let p = placemarks![0] as! CLPlacemark
                print("You are at \(p)")
            }
        }
    }

    func centerOnLocation(location: CLLocation) {
    let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, self.searchRadius * 2.0, self.searchRadius * 2.0)
        self.map.setRegion(coordinateRegion, animated: true)
    }
    
    
    func determineLocationStatus() -> Bool {
        let ok = CLLocationManager.locationServicesEnabled()
        if !ok { return true }// this will try to use anyway and ask the user to turn on location services
        
        let status = CLLocationManager.authorizationStatus()
        switch status {
        case CLAuthorizationStatus.AuthorizedAlways, .AuthorizedWhenInUse:
            return true
        case .NotDetermined:
            self.locman.requestWhenInUseAuthorization()
            return true
        case .Restricted:
            return false
        case .Denied:
            return false
            
        }
    }
    
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        self.locman.stopUpdatingLocation()
    }
    
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let loc = locations.last! as CLLocation
        let coord = loc.coordinate
        print("You are at \(coord.latitude), \(coord.longitude)")
        
    }
   
    @IBAction func findFood(sender: AnyObject) {
        if !determineLocationStatus(){
            print("You havent authed locations or loc services is off")
            return
        }
        let loc = self.map.userLocation.location
        if loc == nil {
            print("I dont know where you are")
            return
        }
    
    }
   
    @IBAction func showCurrentLocationTapped(sender: AnyObject) {
        self.locman.requestWhenInUseAuthorization()
        self.map.userTrackingMode = .Follow
        //centerOnLocation(<#T##location: CLLocation##CLLocation#>)
        
        
    }
}

