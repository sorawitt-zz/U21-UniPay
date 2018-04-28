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

        
   
    }
    
    func setupTabBar() {
        let homeVC = UINavigationController(rootViewController: HomeViewController())
       // let homeVC = HomeViewController()
        homeVC.tabBarItem.title = "หน้าแรก"
        
        homeVC.tabBarItem.image = UIImage(named: "home")
        
        let chatVC = UINavigationController(rootViewController: ChatViewController())
        chatVC.tabBarItem.image = UIImage(named: "chat")
        chatVC.title = "แชท"
        
        let payVC = UINavigationController(rootViewController: PayViewController())
        payVC.tabBarItem.title = "จ่าย"
        payVC.tabBarItem.image = UIImage(named: "qr")
        
        let meVC = UINavigationController(rootViewController: MeViewController())
        meVC.tabBarItem.title = "ฉัน"
        meVC.tabBarItem.image = UIImage(named: "me")
        
        
        viewControllers = [homeVC, chatVC, payVC, meVC]
        tabBar.tintColor = UIColor(red:0.03, green:0.79, blue:0.66, alpha:1.0)
        tabBar.unselectedItemTintColor = UIColor.gray
        tabBar.isTranslucent = false
        let topBorder = CALayer()
        topBorder.frame = CGRect(origin: .zero, size: CGSize(width: 1000, height: 0.5))
        topBorder.backgroundColor = UIColor(red:0.90, green:0.91, blue:0.92, alpha:1.0).cgColor
        tabBar.layer.addSublayer(topBorder)
        tabBar.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupTabBar()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

}
