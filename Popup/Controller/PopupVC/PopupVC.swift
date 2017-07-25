//
//  PopupVC.swift
//  Popup
//
//  Created by Ketan Patel on 25/07/17.
//  Copyright © 2017 Ketan Patel. All rights reserved.
//

import UIKit

class PopupVC: UIViewController {

    @IBOutlet private weak var viewPopupUI:UIView!
    @IBOutlet private weak var viewMain:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showViewWithAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction private func btnGoOfflinePressed(btnSender: UIButton) {
        self.hideViewWithAnimation()
    }
    
    @IBAction private func btnGoDrivingPressed(btnSender: UIButton) {
        self.hideViewWithAnimation()
    }
 
    //MARK: - Animation Method
    
    private func showViewWithAnimation() {
        
        self.view.alpha = 0
        self.viewPopupUI.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        UIView.animate(withDuration: 0.3) {
            self.viewPopupUI.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            self.view.alpha = 1
        }
        
    }
    
    private func hideViewWithAnimation() {
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.viewPopupUI.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.view.alpha = 0
            
        }, completion: {
            (value: Bool) in
            
            self.removeFromParentViewController()
            self.view.removeFromSuperview()
        })
    }

}
