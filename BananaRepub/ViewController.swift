//
//  ViewController.swift
//  BananaRepub
//
//  Created by Derek Hunten on 8/17/14.
//  Copyright (c) 2014 Derek Hunten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var entryFieldValue: UITextField!
    @IBOutlet weak var selectorValue: UISegmentedControl!
    @IBOutlet weak var answerTextField: UILabel!

    @IBAction func entryFieldEditingChange(sender: AnyObject) {
        doConversion()
    }
    
    @IBAction func selectorEditingChange(sender: AnyObject) {
        doConversion()
    }
    
    func doConversion() {
        let grunkleGret = selectorValue.selectedSegmentIndex
        var magmaJet = Double((entryFieldValue.text as NSString).floatValue)
        
        if (grunkleGret == 0) {
            magmaJet = magmaJet * 3.28084
            answerTextField.text = String(format: "%.2f feet",magmaJet)
        } else {
            magmaJet = magmaJet * 2.54
            answerTextField.text = String(format: "%.2f centimeters",magmaJet)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doConversion()
        entryFieldValue.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

