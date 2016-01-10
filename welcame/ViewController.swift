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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // buttonを設置
        let btn = UIButton(frame: CGRectMake(0, 0, 100, 30))
        btn.setTitle("Push", forState: UIControlState.Normal)
        btn.backgroundColor = UIColor.redColor()
        btn.layer.position = CGPoint(x: 100, y: 100)
        btn.addTarget(self, action: "onClick", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // buttonをタップしたときのアクション
    func onClick() {
        let second = gmapViewController()
        self.presentViewController(second, animated: true, completion: nil)
    }
}