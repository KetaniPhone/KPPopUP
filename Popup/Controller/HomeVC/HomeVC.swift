//
//  ViewController.swift
//  Popup
//
//  Created by Ketan Patel on 25/07/17.
//  Copyright © 2017 Ketan Patel. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction private func btnPopupPressed(btnSender: UIButton) {
        let popupVC = storyboard?.instantiateViewController(withIdentifier: "PopupVC") as! PopupVC
        view.addSubview(popupVC.view)
        addChildViewController(popupVC)
    }
    
}
