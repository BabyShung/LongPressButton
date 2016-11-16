//
//  ViewController.swift
//  LongPressButton
//
//  Created by Hao Zheng on 9/25/16.
//  Copyright © 2016 Hao Zheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var roundBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        roundBtn.layer.cornerRadius = 70 / 2
        roundBtn.layer.borderColor = UIColor.red.cgColor
        roundBtn.layer.borderWidth = 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

