

import UIKit
import Foundation

class PayViewController: BaseViewController {
    
    @IBOutlet weak var viewPreview: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //scanner = MTBBarcodeScanner(previewView: viewPreview)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    @IBAction func handleNextOTP() {
        self.tabBarController?.navigationController?.pushViewController(OTPViewController(), animated: true)
    }
}
