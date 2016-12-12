//
//  ViewController.swift
//  TicTacToe
//
//  Created by Sam Lee on 12/7/16.
//  Copyright © 2016 Sam Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BoardDelegate {
    
    @IBOutlet weak var winnerTextLabel: UILabel!
    
    var board: Board?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get screen size
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width * 0.8
        
        // Initialize the boardView on screen
        board = Board(screenSize: screenWidth)
        view.addSubview((board!.boardView!))
        board!.boardView?.center = view.center
        board!.boardView?.delegate = board
        board!.delegate = self
        
        winnerTextLabel.textAlignment = .center
    }

    @IBAction func didPressResetButton(_ sender: AnyObject) {
        board!.resetGame()
        board!.currentTurn = .x
        board!.turnCounter = 0
        winnerTextLabel.text = nil
    }

    func updateWinnerOnScreen(winner: BoardViewFieldContents, turnCount: Int) {
        switch winner {
        case .o: winnerTextLabel.text = "O wins"
        case .x: winnerTextLabel.text = "X wins"
        default: winnerTextLabel.text = "Tie, reset to play again"
        }
    }
}







