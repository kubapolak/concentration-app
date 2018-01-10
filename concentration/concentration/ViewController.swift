//
//  ViewController.swift
//  concentration
//
//  Created by Mac on 1/10/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "flips: \(flipCount)"
        }
    }
    
    var emojis = ["🐋","🦈","🐡"]
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojis[cardNumber], on: sender)
        }
        
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton ) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1)
            flipCount += 1
        }
    }
    
}

