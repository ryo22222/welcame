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
        
        // buttonを設置
        let btn2 = UIButton(frame: CGRectMake(0, 0, 100, 30))
        btn2.setTitle("Push", forState: UIControlState.Normal)
        btn2.backgroundColor = UIColor.redColor()
        btn2.layer.position = CGPoint(x: 100, y: 150)
        btn2.addTarget(self, action: "onClick2", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn2)

        // buttonを設置
        let btn3 = UIButton(frame: CGRectMake(0, 0, 100, 30))
        btn3.setTitle("Push", forState: UIControlState.Normal)
        btn3.backgroundColor = UIColor.redColor()
        btn3.layer.position = CGPoint(x: 100, y: 300)
        btn3.addTarget(self, action: "onClick3", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn3)
        


    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // buttonをタップしたときのアクション
    func onClick() {
        let second = gmapViewController()
        self.presentViewController(second, animated: true, completion: nil)
    }
    
    // buttonをタップしたときのアクション
    func onClick2() {
        let camera = cameraViewController()
        self.presentViewController(camera, animated: true, completion: nil)
    }
    
    // buttonをタップしたときのアクション
    func onClick3() {
        let s = UIStoryboard(name: "ListViewController", bundle: nil)
        let vc = s.instantiateViewControllerWithIdentifier("ListViewController") as! ListViewController
//        self.navigationController?.pushViewController(vc, animated: true)
        self.presentViewController(vc, animated: true, completion: nil)

    }

}