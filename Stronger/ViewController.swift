//
//  ViewController.swift
//  Stronger
//
//  Created by Julio Santos on 4/23/16.
//  Copyright © 2016 m3zcal productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func performOperation(sender: UIButton) {
        userIsInTheMiddleOfTyping = false 
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text = String (M_PI)
            }
        }
    }
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        let textInDisplay = display.text!
        if userIsInTheMiddleOfTyping {
            display.text = textInDisplay + digit
        }
        else {
            display.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
}
 