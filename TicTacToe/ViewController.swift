//
//  ViewController.swift
//  TicTacToe
//
//  Created by Sam Lee on 12/7/16.
//  Copyright © 2016 Sam Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var board = Board()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get screen size
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width * 0.8
        
        // Initialize the boardView on screen
        let boardView = BoardView(sideLength: Int(screenWidth))
        board.boardView = boardView
        view.addSubview(board.boardView!)
        board.boardView?.center = view.center
        board.boardView?.delegate = board
    }




}

