//
//  DonateViewController.swift
//  UniPay
//
//  Created by User on 4/28/18.
//  Copyright © 2018 U21. All rights reserved.
//

import UIKit

class DonateViewController: BaseViewController {

    @IBOutlet weak var scholarCollectionView: UICollectionView!
    let scholarTitle: [String] = ["ทุนการศึกษา", "ทุนโรงพยาบาล", "ทุนอาสาพัฒนา", "ทุนสำหรับการกีฬา"]
    let featureIcon: [String] = ["001", "002", "003", "004"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        self.navigationItem.title = "เลือกเมนูบริจาคทุน"
        let nibCell = UINib(nibName: "DonateCollectionViewCell", bundle: nil)
        scholarCollectionView.register(nibCell, forCellWithReuseIdentifier: "DonateCollectionViewCell")
        
        scholarCollectionView.delegate = self
        scholarCollectionView.dataSource = self
    }
    
}

extension DonateViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return scholarTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DonateCollectionViewCell", for: indexPath) as! DonateCollectionViewCell
        cell.title.text = scholarTitle[indexPath.row]
        cell.imageScholar.image = UIImage(named: featureIcon[indexPath.row])
        cell.layer.cornerRadius = 5
        cell.backgroundColor = UIColor.white
        cell.layer.shadowOffset = CGSize(width: 0, height: 2)
        cell.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.2).cgColor
        cell.layer.shadowOpacity = 1
        cell.layer.shadowRadius = 2

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(DonatedetialViewController(), animated: true)
        case 1:
            self.tabBarController?.navigationController?.pushViewController(DonatedetialViewController(), animated: true)
        case 2:
            self.tabBarController?.navigationController?.pushViewController(DonatedetialViewController(), animated: true)
        case 3:
            self.tabBarController?.navigationController?.pushViewController(DonatedetialViewController(), animated: true)
        default:
            break
        }
    }
}
