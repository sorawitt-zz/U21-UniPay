//
//  HomeViewController.swift
//  UniPay
//
//  Created by U21 on 4/28/18.
//  Copyright © 2018 U21. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var featureCollectionView: UICollectionView!
    let featureTitle: [String] = ["ลงทะเบียน", "ส่งใบคำร้อง", "ชำระค่าหอพัก", "ชำระค่าปรับ", "บริจาค"]
    let featureIcon: [String] = [""]
    
    @IBOutlet weak var viewPanel: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        let nibCell = UINib(nibName: "HomeCollectionViewCell", bundle: nil)
        featureCollectionView.register(nibCell, forCellWithReuseIdentifier: "HomeCollectionViewCell")
        
        featureCollectionView.delegate = self
        featureCollectionView.dataSource = self
       // self.navigationItem.title = "หน้าแรก"
        self.tabBarController?.navigationItem.title = "หน้าแรก"
        
        viewPanel.layer.cornerRadius = 5
        viewPanel.backgroundColor = UIColor.white
        viewPanel.layer.shadowOffset = CGSize(width: 0, height: 2)
        viewPanel.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.2).cgColor
        viewPanel.layer.shadowOpacity = 1
        viewPanel.layer.shadowRadius = 2
        
     }


}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return featureTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        cell.title.text = featureTitle[indexPath.row]
        //cell.iconFeature.image = UIImage(named: featureIcon[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            break
        case 1:
            break
        case 2:
            break
        case 3:
            break
        case 4:
            self.tabBarController?.navigationController?.pushViewController(DonateViewController(), animated: true)
        default:
            break
        }
    }
}
