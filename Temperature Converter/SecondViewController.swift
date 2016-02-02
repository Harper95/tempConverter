//
//  SecondViewController.swift
//  Temperature Converter
//
//  Created by Clayton Harper on 2/2/16.
//  Copyright © 2016 Clayton Harper. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var fOutputTextView: UITextView!
    @IBOutlet weak var fInputTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fOutputTextView.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fahrenheitToCelsius(tempFahrenheit: Double) -> Double {
        return (tempFahrenheit - 32) / 1.8
    }
    
    @IBAction func fConvertButtonPressed(sender: AnyObject) {
        if let userInput: Double = Double(fInputTextField.text!) {
            fOutputTextView.text = "\(userInput) in Celsius is \(fahrenheitToCelsius(userInput)) in Fehrenheit"
        } else {
            fOutputTextView.text = "Invalid input"
        }
    }
    
    @IBAction func fResetButtonPressed(sender: AnyObject) {
        fInputTextField.text = ""
        fOutputTextView.text = ""
    }
}

