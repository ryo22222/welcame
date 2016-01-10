//
//  ViewController.swift
//  welcame
//
//  Created by 長谷川　稜 on 2016/01/10.
//  Copyright © 2016年 ryohasegawa. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController, GMSMapViewDelegate {
    
    var gmaps : GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MapViewを生成する.
        let camera = GMSCameraPosition.cameraWithLatitude(-33.86,longitude: 151.20, zoom: 6)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(-33.86, 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        
        // MapViewをviewに追加する.
        marker.map = mapView
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}