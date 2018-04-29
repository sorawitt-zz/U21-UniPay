//
//  TextField.swift
//  UniPay
//
//  Created by User on 4/29/18.
//  Copyright © 2018 U21. All rights reserved.
//

import UIKit

class TextField: UITextField {
    
    override func caretRect(for position: UITextPosition) -> CGRect {
        return CGRect.zero
    }
    
}
