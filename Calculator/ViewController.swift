//
//  ViewController.swift
//  Calculator
//
//  Created by Kevin Bluer on 8/26/14.
//  Copyright (c) 2014 Bluer Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var screenTextField: UITextField!
    @IBOutlet weak var buttonAdd: UIButton!
    
    var nextAction:String = ""
    var currentTotal:Int = 0
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the screen to read-only
        screenTextField.enabled = false;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberClick(number:Int) {
        
        // super simple switch
        switch nextAction {
            case "add":
                currentTotal += number
            case "subtract":
                currentTotal -= number
            default:
                currentTotal = number
        }
        
        nextAction = ""
        screenTextField.text = "\(currentTotal)"
    }
    
    @IBAction func buttonClearTouchUp(sender: AnyObject) {
        currentTotal = 0
        nextAction = ""
        screenTextField.text = "\(currentTotal)"
    }
    
    @IBAction func buttonOneTouchUp(sender: AnyObject) {
        numberClick(1)
    }
    
    @IBAction func buttonTwoTouchUp(sender: AnyObject) {
        numberClick(2)
    }
    
    @IBAction func buttonThreeTouchUp(sender: AnyObject) {
        numberClick(3)
    }

    @IBAction func buttonAddTouchUp(sender: AnyObject) {
        nextAction = "add"
    }

    @IBAction func buttonSubtractTouchUp(sender: AnyObject) {
        nextAction = "subtract"
    }
}

