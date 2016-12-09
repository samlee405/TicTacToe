//
//  BoardView.swift
//  TicTacToe
//
//  Created by Sam Lee on 12/7/16.
//  Copyright © 2016 Sam Lee. All rights reserved.
//

import Foundation
import UIKit

protocol BoardViewDelegate {
    func move(x: Int, y: Int)
}

class BoardView: UIView {
    
    var subViewArray: [[BoardViewField]] = [[]]
    
    var delegate: BoardViewDelegate?
    
    init(sideLength: Int) {
        let boardFrame = CGRect(x: 0, y: 0, width: sideLength, height: sideLength)
        super.init(frame: boardFrame)
        self.layer.borderWidth = 2
        
        for x in 0...2 {
            for y in 0...2 {
                // configure each subview in the tic tac toe table
                let subViewFrame = CGRect(x: (x * sideLength / 3), y: (y * sideLength / 3), width: sideLength/3, height: sideLength/3)
                let subView = BoardViewField(frame: subViewFrame, x: x, y: y)
                subView.layer.borderWidth = 1
                subView.backgroundColor = .white
                
                // add tap recognition
                let tap = UITapGestureRecognizer(target: self, action: #selector(cellTapped))
                subView.addGestureRecognizer(tap)
                
                subViewArray[x].append(subView)
                self.addSubview(subView)
            }
        }
    }
    
    func cellTapped(sender:UITapGestureRecognizer) {
        let view = sender.view as! BoardViewField
        print("\(view.xCoord), \(view.yCoord)")
        delegate?.move(x: view.xCoord, y: view.yCoord)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
