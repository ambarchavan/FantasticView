//
//  ViewController.swift
//  FantasticView
//
//  Created by Macbook on 14/02/19.
//  Copyright © 2019 SiliconStack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fantasticView = FantasticView(frame: self.view.bounds)
        self.view.addSubview(fantasticView)
    }
}

