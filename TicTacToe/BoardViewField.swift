//
//  BoardViewField.swift
//  TicTacToe
//
//  Created by Sam Lee on 12/7/16.
//  Copyright © 2016 Sam Lee. All rights reserved.
//

import Foundation
import UIKit

class BoardViewField: UIView {
    
    let xCoord: Int
    let yCoord: Int
    var label: UILabel?
    
    init(frame: CGRect, x: Int, y: Int, sideLength: Double) {
        self.xCoord = x
        self.yCoord = y
        super.init(frame: frame)
        
        // Create label to display field contents
        label = UILabel(frame: CGRect(x: 0, y: 0, width: Int(sideLength * 0.7), height: Int(sideLength * 0.7)))
        label?.center = CGPoint(x: sideLength/2, y: sideLength/2)
        label?.font = label?.font.withSize(40) // Set dynamically
        label?.textAlignment = .center
        self.addSubview(label!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
