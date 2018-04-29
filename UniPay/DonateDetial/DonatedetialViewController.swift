//
//  DonatedetialViewController.swift
//  UniPay
//
//  Created by User on 4/29/18.
//  Copyright © 2018 U21. All rights reserved.
//

import UIKit

class DonatedetialViewController: UIViewController {

    @IBOutlet weak var detailDonateView: UIView!
    @IBOutlet weak var paymentView: UIView!
    @IBOutlet weak var submitBtn: UIButton!
    @IBOutlet weak var paymentTableView: UITableView!
    @IBOutlet weak var moneyTextField: UITextField!
    @IBOutlet weak var moneyLabel1: UILabel!
    @IBOutlet weak var moneyLabel2: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
   // @IBOutlet weak var scholarImageView: UIImageView!
    

    var scholarName: String?
    let paymentTilte: [String] = ["ชำระผ่าน Uni-Wallet", "ชำระผ่านธนาคาร", "ชำระผ่านบัตรเครดิต", "ชำระผ่าน Internet-Banking"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        // Do any additional setup after loading the view.
        let nibCell = UINib(nibName: "paymentCell", bundle: nil)
        
        paymentTableView.register(nibCell, forCellReuseIdentifier: "paymentCell")
        self.navigationItem.title = "บริจาคทุน"
        self.paymentTableView.separatorStyle = .none
    }

    private func setUpView() {
        submitBtn.layer.cornerRadius = 5
        
        detailDonateView.backgroundColor = UIColor.white
        detailDonateView.layer.shadowOffset = CGSize(width: 0, height: 2)
        detailDonateView.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.2).cgColor
        detailDonateView.layer.shadowOpacity = 1
        detailDonateView.layer.shadowRadius = 2
        
        paymentView.backgroundColor = UIColor.white
        paymentView.layer.shadowOffset = CGSize(width: 0, height: 2)
        paymentView.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.2).cgColor
        paymentView.layer.shadowOpacity = 1
        paymentView.layer.shadowRadius = 2
    }
    
    @IBAction func valueChangeMoney() {
        if moneyTextField.text != "" {
            moneyLabel1.text = moneyTextField.text! + ".00"
            moneyLabel2.text = moneyTextField.text! + ".00"
        } else {
            moneyLabel1.text = "0.00"
            moneyLabel2.text = "0.00"
        }
    }
   
    @IBAction func submitPressed(_ sender: Any) {
        print("ok")
        self.navigationController?.pushViewController(OTPViewController(), animated: true)
    }
}

extension DonatedetialViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "paymentCell", for: indexPath) as! paymentCell
        cell.paymentLabel.text = paymentTilte[indexPath.row]
        //cell.iconFeature.image = UIImage(named: featureIcon[indexPath.row])
        return cell
    }
}
