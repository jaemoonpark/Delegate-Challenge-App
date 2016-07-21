//
//  ViewController.swift
//  Delegates Challenge
//
//  Created by Jaemoon Park on 7/20/16.
//  Copyright © 2016 Jaemoon Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var switch1: UISwitch!
    
    let zipCodeDelegate = ZipCodeDelegate()
    override func viewDidLoad() {
        self.textField1.delegate = zipCodeDelegate
        self.textField3.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if switch1.on{
            return true
        }
            return false
    }

}

