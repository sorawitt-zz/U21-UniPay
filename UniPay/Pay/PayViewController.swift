

import UIKit
import Foundation

class PayViewController: UIViewController {
    
    @IBOutlet weak var viewPreview: UIView!
    var scanner: MTBBarcodeScanner?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //scanner = MTBBarcodeScanner(previewView: viewPreview)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.scanner?.stopScanning()
        
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    @IBAction func handleNextOTP() {
        self.tabBarController?.navigationController?.pushViewController(OTPViewController(), animated: true)
        // navigationController?.pushViewController(OTPViewController(), animated: true)
    }
}
