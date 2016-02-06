//
//  FirstViewController.swift
//  Temperature Converter
//
//  Created by Clayton Harper on 2/2/16.
//  Copyright © 2016 Clayton Harper. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var cOutputTextView: UITextView!
    @IBOutlet weak var cInputTextField: UITextField!
    
    var isTypingNumber: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cOutputTextView.text = ""
        resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Function to convert Celsius to Fehrenheit
    func celcsiusToFehrenheit(tempCelsius: Double) -> Double {
            return tempCelsius * 1.8 + 32
    }
    
    @IBAction func cConvertButtonPressed(sender: AnyObject) {
        // If valid input, update the label
        // else invalid input, run error message
        if let userInput: Double = Double(cInputTextField.text!) {
             cOutputTextView.text = "\(userInput) in Celsius is \(celcsiusToFehrenheit(userInput)) in Fahrenheit"
        } else {
            cOutputTextView.text = "Invalid input"
        }
    }
    
    @IBAction func cResetButtonPressed(sender: AnyObject) {
        // Clear all input from inputTextField
        // Reset label to initial state
        cInputTextField.text = ""
        cOutputTextView.text = ""
    }
    
    @IBAction func cNumberButtonPressed(sender: UIButton) {
        if let number = sender.currentTitle {
            if isTypingNumber {
                cInputTextField.text! += number
            } else {
                cInputTextField.text! = number
                isTypingNumber = true
            }
        }
    }
    
    
}













