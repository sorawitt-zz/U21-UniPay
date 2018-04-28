//
//  SubjectTableViewCell.swift
//  UniPay
//
//  Created by U21 on 4/29/18.
//  Copyright © 2018 U21. All rights reserved.
//

import UIKit

class SubjectTableViewCell: UITableViewCell {

    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var num: UILabel!
    @IBOutlet weak var timeOne: UILabel!
    @IBOutlet weak var timeTwo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
