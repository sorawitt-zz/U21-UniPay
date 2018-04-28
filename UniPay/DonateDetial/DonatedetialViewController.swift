//
//  DonatedetialViewController.swift
//  UniPay
//
//  Created by User on 4/29/18.
//  Copyright © 2018 U21. All rights reserved.
//

import UIKit

class DonatedetialViewController: UIViewController {

    @IBOutlet weak var detailDonateView: UIView!
    @IBOutlet weak var paymentView: UIView!
    @IBOutlet weak var submitBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        // Do any additional setup after loading the view.
    }

    private func setUpView() {
        submitBtn.layer.cornerRadius = 5
        
        detailDonateView.backgroundColor = UIColor.white
        detailDonateView.layer.shadowOffset = CGSize(width: 0, height: 2)
        detailDonateView.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.2).cgColor
        detailDonateView.layer.shadowOpacity = 1
        detailDonateView.layer.shadowRadius = 2
        
        
        paymentView.backgroundColor = UIColor.white
        paymentView.layer.shadowOffset = CGSize(width: 0, height: 2)
        paymentView.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.2).cgColor
        paymentView.layer.shadowOpacity = 1
        paymentView.layer.shadowRadius = 2
        
        

    }
}
