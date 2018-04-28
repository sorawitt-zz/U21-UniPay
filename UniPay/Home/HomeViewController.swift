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
    let featureTitle: [String] = ["ลงทะเบียน", "ส่งใบคำร้อง", "คำชะค่าหอพัก", "ชำระค่าปรับ", "บริจาค"]
    let featureIcon: [String] = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        let nibCell = UINib(nibName: "HomeCollectionViewCell", bundle: nil)
        featureCollectionView.register(nibCell, forCellWithReuseIdentifier: "HomeCollectionViewCell")
        
        featureCollectionView.delegate = self
        featureCollectionView.dataSource = self
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
