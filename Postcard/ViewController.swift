//
//  ViewController.swift
//  Postcard
//
//  Created by Colin Mullikin on 5/27/17.
//  Copyright © 2017 Colin Mullikin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(_ sender: UIButton) {
        nameLabel.isHidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blue
        
        messageLabel.isHidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.red
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", for: UIControlState.normal)
    }

}

