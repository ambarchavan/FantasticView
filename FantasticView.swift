//
//  FantasticView.swift
//  FantasticView
//
//  Created by Macbook on 14/02/19.
//  Copyright © 2019 SiliconStack. All rights reserved.
//

import UIKit

class FantasticView: UIView {
    let colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.brown, UIColor.purple]
    var colorCounter = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
            UIView.animate(withDuration: 2.0) {
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                self.colorCounter += 1
            }
        }
        scheduledColorChanged.fire()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
