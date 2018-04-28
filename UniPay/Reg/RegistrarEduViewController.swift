//
//  RegistrarEduViewController.swift
//  UniPay
//
//  Created by U21 on 4/29/18.
//  Copyright © 2018 U21. All rights reserved.
//

import UIKit

struct subjectModel {
    let id: String
    let name: String
    let num: String
    let time1: String
    let time2: String
}

class RegistrarEduViewController: UIViewController {

    
    @IBOutlet weak var subjectTableView: UITableView!
    @IBOutlet weak var subjectchooseTableView: UITableView!
    
    
    var sub: [subjectModel]!
    var ssub: [subjectModel]!
    override func viewDidLoad() {
        super.viewDidLoad()
        var s1 = subjectModel(id: "001212", name: "ไมโครโพเซสเซอร์", num: "3 (0-6)", time1: "จ.09.00-12.00 น.", time2: "พ.08.00-11.00 น.")
        var s2 = subjectModel(id: "57612", name: "ชีววิทยาเบื้องต้น", num: "3 (0-6)", time1: "จ.09.00-12.00 น.", time2: "พ.08.00-11.00 น.")
        var s3 = subjectModel(id: "22312", name: "ภาษาอังกฤษ", num: "3 (0-6)", time1: "จ.09.00-12.00 น.", time2: "พ.08.00-11.00 น.")

        var s11 = subjectModel(id: "001212", name: "โครงสร้างข้อมูล", num: "2 (0-6)", time1: "จ.09.00-12.00 น.", time2: "พ.08.00-11.00 น.")
        var s21 = subjectModel(id: "57612", name: "โมบายแอพพลิเคชั่น", num: "3 (0-6)", time1: "จ.09.00-12.00 น.", time2: "พ.08.00-11.00 น.")
        var s31 = subjectModel(id: "22348", name: "ภาษาไทย", num: "3 (0-6)", time1: "จ.09.00-12.00 น.", time2: "พ.08.00-11.00 น.")
        
        sub = [s1, s2, s3]
        ssub = [s11, s21, s31]

        
        let nibCell = UINib(nibName: "SubjectTableViewCell", bundle: nil)
        subjectTableView.register(nibCell, forCellReuseIdentifier: "SubjectTableViewCell")
        subjectchooseTableView.register(nibCell, forCellReuseIdentifier: "SubjectTableViewCell")
        subjectchooseTableView.delegate = self
        subjectTableView.delegate = self
        subjectchooseTableView.dataSource = self
        subjectTableView.dataSource = self
    }


    
    

}

extension RegistrarEduViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ssub.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == subjectTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SubjectTableViewCell", for: indexPath) as! SubjectTableViewCell
            let s = sub[indexPath.row]
            cell.id.text = s.id
            cell.name.text = s.name
            cell.num.text = s.num
            cell.timeOne.text = s.time1
            cell.timeTwo.text = s.time2
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SubjectTableViewCell", for: indexPath) as! SubjectTableViewCell
            let s = ssub[indexPath.row]
            cell.id.text = s.id
            cell.name.text = s.name
            cell.num.text = s.num
            cell.timeOne.text = s.time1
            cell.timeTwo.text = s.time2
            return cell
        }

        
    }
}
