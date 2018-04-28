

import UIKit
import Foundation

class PayViewController: BaseViewController {
    
    @IBOutlet weak var viewPreview: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //scanner = MTBBarcodeScanner(previewView: viewPreview)
         self.tabBarController?.navigationItem.title = "จ่าย"
    }
    
    
    @IBAction func handleNextOTP() {
        self.tabBarController?.navigationController?.pushViewController(OTPViewController(), animated: true)
    }
}
