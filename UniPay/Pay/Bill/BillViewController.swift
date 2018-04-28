//
//  BillViewController.swift
//  UniPay
//
//  Created by U21 on 4/29/18.
//  Copyright © 2018 U21. All rights reserved.
//

import UIKit

class BillViewController: UIViewController {

    @IBOutlet weak var viewTopOne: UIView!
    @IBOutlet weak var viewSec: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewTopOne.layer.shadowColor = UIColor.lightGray.cgColor
        viewTopOne.layer.shadowOffset = CGSize(width:0,height: 2.0)
        viewTopOne.layer.shadowRadius = 2.0
        viewTopOne.layer.shadowOpacity = 1.0
        viewTopOne.layer.masksToBounds = false
        viewTopOne.layer.shadowPath = UIBezierPath(roundedRect:viewTopOne.bounds, cornerRadius:viewTopOne.layer.cornerRadius).cgPath
        
    }

}
