//
//  ZipCodeDelegate.swift
//  Delegates Challenge
//
//  Created by Jaemoon Park on 7/20/16.
//  Copyright © 2016 Jaemoon Park. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeDelegate: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let checkString = Int(string)
        //string == "" detects backspace
        if (checkString != nil && textField.text!.characters.count < 5) || (string == ""){
            return true
        }
        return false
    }
}