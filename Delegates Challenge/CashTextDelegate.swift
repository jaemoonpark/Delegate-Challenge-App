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
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        return true
    }
}
