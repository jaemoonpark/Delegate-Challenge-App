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
    var total = 0
    let currencyFormat = NSNumberFormatter()
    
    override init(){
        currencyFormat.numberStyle = NSNumberFormatterStyle.CurrencyStyle
    }
    
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
        if(string == ""){
            total /= 10
            //return true because we want characters removed
            return true
        }
        else if (checkString != nil)
        {
            //by default returns false for this case because the text automatically handles adding in digits
            total *= 10
            total += Int(string)!
            //implemented this conditional to prevent overflow glitch
            if(currencyFormat.stringFromNumber(Double(total) / 100.0)?.characters.count > 21){
                total = 0
                textField.text = currencyFormat.stringFromNumber(0)
            }
            else{
            textField.text = currencyFormat.stringFromNumber(Double(total) / 100.0)
            }
        }
        return false
    }
}
