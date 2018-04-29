//
//  paymentCell.swift
//  UniPay
//
//  Created by User on 4/29/18.
//  Copyright © 2018 U21. All rights reserved.
//

import UIKit

class paymentCell: UITableViewCell {

    @IBOutlet weak var paymentLabel: UILabel!
    @IBOutlet weak var radioButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func initCellItem() {
        let deselectedImage = UIImage(named: "ic_radio_button_unchecked_white")?.withRenderingMode(.alwaysTemplate)
        let selectedImage = UIImage(named: "ic_radio_button_checked_white")?.withRenderingMode(.alwaysTemplate)
        radioButton.setImage(deselectedImage, for: .normal)
        radioButton.setImage(selectedImage, for: .selected)
        radioButton.addTarget(self, action: #selector(self.radioButtonTapped), for: .touchUpInside)
    }
    
    @objc func radioButtonTapped(_ radioButton: UIButton) {
        print("radio button tapped")
        let isSelected = !self.radioButton.isSelected
        self.radioButton.isSelected = isSelected
        if isSelected {
            deselectOtherButton()
        }
    }
    
    func deselectOtherButton() {
        let tableView = self.superview?.superview as! UITableView
        let tappedCellIndexPath = tableView.indexPath(for: self)!
        let section = tappedCellIndexPath.section
        let rowCounts = tableView.numberOfRows(inSection: section)
        
        for row in 0..<rowCounts {
            if row != tappedCellIndexPath.row {
                let cell = tableView.cellForRow(at: IndexPath(row: row, section: section)) as! paymentCell
                cell.radioButton.isSelected = false
            }
        }
    }

}
