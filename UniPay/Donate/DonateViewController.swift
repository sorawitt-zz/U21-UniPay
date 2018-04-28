//
//  DonateViewController.swift
//  UniPay
//
//  Created by User on 4/28/18.
//  Copyright © 2018 U21. All rights reserved.
//

import UIKit

class DonateViewController: UIViewController {

    @IBOutlet weak var scholarCollectionView: UICollectionView!
    let scholarTitle: [String] = ["ทุนการศึกษา", "ทุนสำหรับโรงพยาบาลในมหาวิทยาลัย", "ทุนสำหรับอาสาชมรมพัฒนา", "ทุนสำหรับการกีฬา"]
    let featureIcon: [String] = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
    }
    
    private func setupCollectionView() {
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
        //cell.iconFeature.image = UIImage(named: featureIcon[indexPath.row])
        return cell
    }
}