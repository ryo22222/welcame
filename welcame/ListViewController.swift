//
//  listViewController.swift
//  welcame
//
//  Created by 長谷川　稜 on 2016/01/10.
//  Copyright © 2016年 ryohasegawa. All rights reserved.
//

import Foundation
import UIKit

class ListViewController: UITableViewController, UITextViewDelegate {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label_title: UILabel!
    
    override func viewDidLoad() {
        self.label_title.text = "見えてる"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
    
}