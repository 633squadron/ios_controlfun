//
//  ViewController.swift
//  ControlFun
//
//  Created by Joe Malin on 2016-03-19.
//  Copyright © 2016 The Arwed Group. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var numberField: UITextField!
    
    @IBOutlet weak var sliderValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sliderValue.text = "50"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func textFieldDoneEditing(sender: UITextField)
    
    {
        sender.resignFirstResponder()
    }

    @IBAction func onTapGestureRecognized(sender: AnyObject) {
        nameField.resignFirstResponder()
        numberField.resignFirstResponder()
    }

    @IBAction func sliderMoved(sender: UISlider) {
        sliderValue.text = "\(lroundf(sender.value))"
    }
}

