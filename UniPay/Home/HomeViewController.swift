//
//  HomeViewController.swift
//  UniPay
//
//  Created by U21 on 4/28/18.
//  Copyright © 2018 U21. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    
    @IBOutlet weak var viewPanel: UIView!
    @IBOutlet weak var regBut: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        
        regBut.layer.shadowOffset = CGSize(width: 0, height: 2)
        regBut.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.2).cgColor
        regBut.layer.shadowOpacity = 1
        regBut.layer.shadowRadius = 2
    }
    
    
    
    private func setupCollectionView() {

        
        self.tabBarController?.navigationItem.title = "หน้าแรก"
        
        viewPanel.layer.cornerRadius = 5
        viewPanel.backgroundColor = UIColor.white
        viewPanel.layer.shadowOffset = CGSize(width: 0, height: 2)
        viewPanel.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.2).cgColor
        viewPanel.layer.shadowOpacity = 1
        viewPanel.layer.shadowRadius = 2
        
     }

    @IBAction func reg(){
        let regg = RegistrarEduViewController()
        self.tabBarController?.navigationController?.pushViewController(regg, animated: true)
    }
    
    @IBAction func donation(){
        let regg = DonateViewController()
        self.tabBarController?.navigationController?.pushViewController(regg, animated: true)
    }
}


