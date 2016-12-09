//
//  Board.swift
//  TicTacToe
//
//  Created by Sam Lee on 12/7/16.
//  Copyright © 2016 Sam Lee. All rights reserved.
//

import Foundation

class Board: BoardViewDelegate {
    
    var boardView: BoardView?
    
    var gameData: [[BoardViewFieldContents]] = [[.empty, .empty, .empty],
                                                [.empty, .empty, .empty],
                                                [.empty, .empty, .empty]]
    
    var currentTurn: Player = .x
    
    func move(x: Int, y: Int) {
        if currentTurn == .o {
            gameData[x][y] = .o
            currentTurn = .x
        }
        else if currentTurn == .x {
            gameData[x][y] = .x
            currentTurn = .o
        }
        if winner() != .empty {
            print(winner())
        }
    }
    
    func winner() -> BoardViewFieldContents {
        if gameData[0][0] == gameData[1][0] && gameData[1][0] == gameData[2][0] {
            return gameData[0][0]
        }
        else if gameData[0][1] == gameData[1][1] && gameData[1][1] == gameData[2][1] {
            return gameData[0][1]
        }
        else if gameData[0][2] == gameData[1][2] && gameData[1][2] == gameData[2][2] {
            return gameData[0][2]
        }
        else if gameData[0][0] == gameData[0][1] && gameData[0][1] == gameData[0][2] {
            return gameData[0][0]
        }
        else if gameData[1][0] == gameData[1][1] && gameData[1][1] == gameData[1][2] {
            return gameData[1][0]
        }
        else if gameData[2][0] == gameData[2][1] && gameData[2][1] == gameData[2][2] {
            return gameData[2][0]
        }
        else if gameData[0][0] == gameData[1][1] && gameData[1][1] == gameData[2][2] {
            return gameData[0][0]
        }
        else if gameData[2][0] == gameData[1][1] && gameData[1][1] == gameData[0][2] {
            return gameData[2][0]
        }
        else {
            return .empty
        }
    }
}
