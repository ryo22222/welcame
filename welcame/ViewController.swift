//
//  ViewController.swift
//  welcame
//
//  Created by 長谷川　稜 on 2016/01/10.
//  Copyright © 2016年 ryohasegawa. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController,GMSMapViewDelegate,CLLocationManagerDelegate {
    
    var calloutview: SMCalloutView?
    var lm: CLLocationManager!
    let defaultRadius = 300
    
    @IBOutlet var mapview : GMSMapView
    @IBOutlet var gadbnrview : GADBannerView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mapview.myLocationEnabled = true
        mapview.delegate = self
        
        lm = CLLocationManager()
        lm.delegate = self
        lm.desiredAccuracy = kCLLocationAccuracyBest
        lm.requestAlwaysAuthorization()
        lm.distanceFilter = 300
        lm.startUpdatingLocation()
        //startLocation()
    }
    
    func startLocation(){
        //NSLog("aaaaaa")
        lm.startUpdatingLocation()
    }
    
    func stopLocation(){
        
    }
    
    func locationManager(manager: CLLocationManager!, didUpdateToLocation newLocation: CLLocation!, fromLocation oldLocation: CLLocation!){
        //NSLog("bbb")
        var coordinate: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude:newLocation.coordinate.latitude,longitude:newLocation.coordinate.longitude)
        var now :GMSCameraPosition = GMSCameraPosition.cameraWithLatitude(coordinate.latitude,longitude:coordinate.longitude,zoom:17)
        mapview.camera = now
        
    }
    
    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!){
        //NSLog("ccc")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
