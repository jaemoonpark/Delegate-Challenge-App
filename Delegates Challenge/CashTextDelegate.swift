//
//  CashTextDelegate.swift
//  Delegates Challenge
//
//  Created by Jaemoon Park on 7/20/16.
//  Copyright © 2016 Jaemoon Park. All rights reserved.
//

import Foundation
import UIKit

class CashTextDelegate: NSObject, UITextFieldDelegate {
    //initial $0.00 without sacraficing placeholder
    var multiplier = 0
    var total = 0
    func textFieldDidBeginEditing(textField: UITextField) {
        if(textField.text == "")
        {
            textField.text = "$0.00"
        }
    }
    
    //if no text edited, remove it
    func textFieldDidEndEditing(textField: UITextField) {
        if(textField.text == "$0.00")
        {
            textField.text = ""
        }
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let checkString = Int(string)
        if checkString == nil && (string != ""){
            return false
        }
        
        if(string == "" && multiplier > 0){
            multiplier -= 1
        }
        else if (string != ""){
            multiplier += 1
        }
        
        print(multiplier)
        return true
    }
}
