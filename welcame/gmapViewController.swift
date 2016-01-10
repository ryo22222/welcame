//
//  gmapViewController.swift
//  welcame
//
//  Created by 長谷川　稜 on 2016/01/10.
//  Copyright © 2016年 ryohasegawa. All rights reserved.
//

import Foundation
import GoogleMaps

class gmapViewController: UIViewController, GMSMapViewDelegate {
    
    var gmaps : GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MapViewを生成する.
        let camera = GMSCameraPosition.cameraWithLatitude(35.658581,longitude: 139.745433, zoom: 10)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        // 東京タワー
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(35.658581, 139.745433)
        marker.title = "ピンに出るタイトル"
        marker.snippet = "ピンに出る詳細"
        
        // 六本木ヒルズ
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2DMake(35.660464, 139.729249)
        marker2.title = "ピンに出るタイトル"
        marker2.snippet = "ピンに出る詳細"
        
        // MapViewをviewに追加する.
        marker.map = mapView
        marker2.map = mapView
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
