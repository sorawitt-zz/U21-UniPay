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
        
        
    }
    
    override func loadViewIfNeeded() {
        super.loadViewIfNeeded()
        viewTopOne.layer.shadowColor = UIColor.lightGray.cgColor
        viewTopOne.layer.shadowOffset = CGSize(width:0,height: 2.0)
        viewTopOne.layer.shadowRadius = 2.0
        viewTopOne.layer.shadowOpacity = 0.5
        viewTopOne.layer.masksToBounds = false
        
    }
    
    @IBAction func handleHome() {
        let homeVC = HomeViewController()
        if let window = self.view.window {
            let vc = UINavigationController(rootViewController: CustomTabbarViewController())

            window.rootViewController = vc
        }
        //self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    
    

}
