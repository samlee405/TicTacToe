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
    var fieldContents: BoardViewFieldContents = .empty
    
    init(frame: CGRect, x: Int, y: Int) {
        self.xCoord = x
        self.yCoord = y
        super.init(frame: frame)
        
        // Create label to display field contents
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        self.addSubview(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
