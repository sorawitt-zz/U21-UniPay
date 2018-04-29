//
//  DonateCollectionViewCell.swift
//  UniPay
//
//  Created by User on 4/28/18.
//  Copyright © 2018 U21. All rights reserved.
//

import UIKit

class DonateCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageScholar: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.cornerRadius = 5
        contentView.backgroundColor = UIColor.white
        contentView.layer.shadowOffset = CGSize(width: 0, height: 2)
        contentView.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.2).cgColor
        contentView.layer.shadowOpacity = 1
        contentView.layer.shadowRadius = 2
        // Initialization code
    }

}
