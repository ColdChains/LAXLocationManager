//
//  ViewController.swift
//  LAXLocationManager
//
//  Created by 冰凉的枷锁 on 2017/4/5.
//  Copyright © 2017年 冰凉的枷锁. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var manager: LAXLocationManager = LAXLocationManager.init()

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        manager.getLocation(success: { (str) in
            self.label.text = str
        }) { (err) in
            self.label.text = err
        }
    }
    

}

