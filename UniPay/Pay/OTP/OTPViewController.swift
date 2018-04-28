//
//  OTPViewController.swift
//  UniPay
//
//  Created by U21 on 4/28/18.
//  Copyright © 2018 U21. All rights reserved.
//

import UIKit

class OTPViewController: BaseViewController {
    
    @IBOutlet weak var otpTextOne: UITextField!
     @IBOutlet weak var otpTextTwo: UITextField!
     @IBOutlet weak var otpTextThree: UITextField!
     @IBOutlet weak var otpTextfour: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    
    var sumTextFeild: [UITextField]!
    override func viewDidLoad() {
        super.viewDidLoad()
        sumTextFeild = [otpTextOne, otpTextTwo, otpTextThree, otpTextfour]
        submitBtn.clipsToBounds = true
        submitBtn.layer.cornerRadius = 5
    }
    
    var sum = 0 {
        didSet {
            if sum == 4 {
                submitBtn.isHidden = false
            }else {
                submitBtn.isHidden = true
            }
        }
    }
    @IBAction func handlePressedBtn() {
        
        if sum < 4 {
            sumTextFeild[sum].text = "1"
            sum += 1
        }
        
    }
    
    @IBAction func handleNextBill() {
        self.navigationController?.pushViewController(BillViewController(), animated: true)
    }

    @IBAction func handDeletePin() {
        if sum > 0 {
            sum -= 1
            sumTextFeild[sum].text = ""
            
        }
    }
}


