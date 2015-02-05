//
//  ViewController.swift
//  Postcard
//
//  Created by MacBook Pro on 1/17/15.
//  Copyright (c) 2015 Dirk Heite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!

    @IBOutlet weak var maiButton: UIButton!
 
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var labelNameName: UILabel!
    @IBOutlet weak var labelMessageMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // code will evaluate when we press the button
        
        messageLabel.hidden = false
        nameLabel.hidden = false
        labelMessageMessage.hidden = false
        labelNameName.hidden = false
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = enterNameTextField.text
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
    
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        maiButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
}

