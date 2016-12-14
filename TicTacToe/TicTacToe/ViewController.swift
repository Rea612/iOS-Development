//
//  ViewController.swift
//  TicTacToe
//
//  Created by Rui Zou on 12/13/16.
//  Copyright © 2016 RuiZou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //1 is noughts, 2 is crosses
    var activePlayer = 1
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] // 0 is empty, 1 is nought, 2 is cross
    var activeGame = true
    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [1, 4, 7],[2, 5, 8],[0, 3, 6], [0, 4, 8], [2, 4, 6]]
    @IBAction func buttonPressed(_ sender: AnyObject) {
        let activePosition = sender.tag - 1
        
        if gameState[activePosition] == 0 && activeGame {
            gameState[activePosition] = activePlayer
            if activePlayer == 1 {
                sender.setImage(UIImage(named: "nought.png"), for:[])
                activePlayer = 2
            } else {
                sender.setImage(UIImage(named: "cross.png"), for:[])
                activePlayer = 1
            }
            for combination in winningCombinations {
                if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                    //we have winner
                    activeGame = false
                    
                    winningAlert.isHidden = false
                    displayRestart.isHidden = false
                    if gameState[combination[0]] == 1 {
                        winningAlert.text = "Nought has won!"
                    }
                    else {
                        winningAlert.text = "Cross has won!"
                    }
                    UIView.animate(withDuration: 1, animations: {
                        self.winningAlert.center = CGPoint(x: self.winningAlert.center.x + 500, y: self.winningAlert.center.y)
                        self.displayRestart.center = CGPoint(x: self.displayRestart.center.x + 500, y: self.displayRestart.center.y)
                    })
                }
            }
        }

        
        print(sender.tag)
    }
    
    @IBAction func restartButton(_ sender: Any) {
        activePlayer = 1
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] // 0 is empty, 1 is nought, 2 is cross
        activeGame = true
        for i in 1..<10 {
            if let button = view.viewWithTag(i) as? UIButton {
                button.setImage(nil, for: [])
                winningAlert.isHidden = true
                displayRestart.isHidden = true
                
                winningAlert.center = CGPoint(x: winningAlert.center.x - 500, y: winningAlert.center.y)
                displayRestart.center = CGPoint(x: displayRestart.center.x - 500, y: displayRestart.center.y)
            }
        }
    }
    
    @IBOutlet var winningAlert: UILabel!
    
    @IBOutlet var displayRestart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winningAlert.isHidden = true
        displayRestart.isHidden = true
        
        winningAlert.center = CGPoint(x: winningAlert.center.x - 500, y: winningAlert.center.y)
        displayRestart.center = CGPoint(x: displayRestart.center.x - 500, y: displayRestart.center.y)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

