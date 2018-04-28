//
//  CustomTabbarViewController.swift
//  UniPay
//
//  Created by U21 on 4/28/18.
//  Copyright © 2018 U21. All rights reserved.
//

import UIKit

class CustomTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        homeVC.title = "หน้าแรก"
        
        let chatVC = UINavigationController(rootViewController: ChatViewController())
        chatVC.title = "แชท"
        
        let payVC = UINavigationController(rootViewController: PayViewController())
        payVC.title = "จ่าย"
        
        let meVC = UINavigationController(rootViewController: MeViewController())
        meVC.title = "ฉัน"
        
        let guVC = UINavigationController(rootViewController: ShareViewController())
        meVC.title = "หน้าแรก บุค"

        
        viewControllers = [homeVC, chatVC, payVC, meVC]
        tabBar.tintColor = UIColor.blue
        tabBar.unselectedItemTintColor = UIColor.black
        tabBar.isTranslucent = false
        let topBorder = CALayer()
        topBorder.frame = CGRect(origin: .zero, size: CGSize(width: 1000, height: 0.5))
        topBorder.backgroundColor = UIColor(red:0.90, green:0.91, blue:0.92, alpha:1.0).cgColor
        tabBar.layer.addSublayer(topBorder)
        tabBar.clipsToBounds = true
    }

}
